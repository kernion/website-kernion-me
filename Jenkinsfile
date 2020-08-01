PUBLISHER_SSH_KEY = 'chezrufus-jenkins-ssh-key'
PUBLISHER_DEST = 'publisher@shell.soaustin.net:/srv/www/users/publisher/kernion.me/htdocs'

pipeline {
  agent any

  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
    disableConcurrentBuilds()
  }

  parameters {
    booleanParam(name: 'DO_BUILD', defaultValue: true, description: 'Build the website. When you are performing a publish, you may choose to skip this. The previous build will be published.')
    booleanParam(name: 'DO_PUBLISH', defaultValue: false, description: 'Publish the website.')
    booleanParam(name: 'DO_PUBLISH_DRY_RUN', defaultValue: false, description: 'If publish is enabled, do dry run instead. Ignored unless DO_PUBLISH is set.')
  }

  environment {
    JEKYLL_VERSION = "4.1.0"

    // $JEKYLL_HOME is the directory where the "jenkins_tmp" storage volume was mounted (as defined in docker-compose.yml)
    JEKYLL_HOME = "/var/jenkins_tmp"

    // $JEKYLL_JOB_ID is a brief unique job id, taken from the base name of the workspace dir
    JEKYLL_JOB_ID = WORKSPACE.replaceFirst(~'^.*/', '')

    // $JEKYLL_JOB_DIR is the directory where job source will be staged
    JEKYLL_JOB_DIR = "${env.JEKYLL_HOME}/${env.JEKYLL_JOB_ID}"

    // $JEKYLL_CONTAINER_HOME is where $JEKYLL_JOB_DIR will be mounted inside the Jekyll container
    JEKYLL_CONTAINER_HOME = "/srv/jekyll/${JEKYLL_JOB_ID}"
  }

  stages {

    stage('check environment') {
      steps {
        echo("params = ${params}")
        sh "env | sort"
      }
    }

    stage('jekyll build') {
        steps {
            script {
                if (params.DO_BUILD) {
                    // state the website into the jenkins_tmp Docker volume that Jekyll can access
                    sh 'rm -rf ${JEKYLL_JOB_DIR} ; mkdir -p ${JEKYLL_JOB_DIR} ; rsync -a . ${JEKYLL_JOB_DIR}'

                    // build the web site
                    sh 'docker run --rm --volume="jenkins_tmp:/srv/jekyll" jekyll/jekyll:${JEKYLL_VERSION} /bin/sh -c "cd ${JEKYLL_CONTAINER_HOME} && jekyll build"'

                    // copy the results out of the jenkins_tmp Docker volume
                    sh "rsync --archive --delete ${JEKYLL_JOB_DIR}/. ."
                } else {
                    echo("Build stage skipped")
                }
            }
        }
    } // stage('jekyll build')

    stage('generate archive') {
      steps {
        sh "tar --create --gzip --directory=_site --file=website.tar.gz ."
        archiveArtifacts artifacts: 'website.tar.gz'
      }
    }

    stage('publish') {
        steps {
            script {
                if (params.DO_PUBLISH) {
                    def dryRun = ""
                    if (params.DO_PUBLISH_DRY_RUN) {
                        dryRun = "--dry-run"
                    }
                    env.RSYNC_RSH = "ssh -o StrictHostKeyChecking=no"
                    sshagent([PUBLISHER_SSH_KEY]) {
                        sh "rsync --archive --delete --checksum ${dryRun} --verbose _site/. ${PUBLISHER_DEST}"
                    }
                } else {
                    echo("Publish stage skipped")
                }
            }
        }
    }

  } // stages

  post {
    always {
      sh "rm -rf ${JEKYLL_JOB_DIR}"
    }
  }

} // pipeline

