---
layout: page
title: About This Site
permalink: /about/
---

<p>My portfolio website looks pretty simple ... but the process of editing and publishing it is surprisingly complex.</p>

<p>My plan was to use an easily customizable Jekyll theme with GitHub Pages to produce and publish a simple portfolio site. A couple of challenges arose:</p>
<ul><li>I work primarily on a Windows 7 desktop at home. After numerous attempts, it became obvious that Ruby, which Jekyll requires, wouldn't play nice on this operating system.</li>
<li>I wanted my writing samples password protected. Some of the docs aren't current, and I don't want users finding stale processes. Some are draft PDFs and my former employers might not like unattractive copies of their branded content made public. GitHub doesn't accommodate partial password protection of a website (to my knowledge).</li>
</ul>
<p>You might wonder why I didn't use WordPress or a similar CMS. There have been moments when I wondered that too. This is a small, static website that doesn't require dynamic content management. In addition, my portfolio project has been an excellent way for me to maintain and improve my Jekyll and Git skills. And as my web admin tells me, hacking concerns often mean frequent CMS updates and upgrades.</p> 
<p><strong>How it all works</strong></p>
<p>Full disclosure: A Linux administrator/web admin guided me through a lot of the setup behind this process. I couldn't have devised the workarounds myself. I want to acknowledge and express my gratitude for this assistance.</p>

<p>Follow along carefully -- the file management is a little bit of a shell game:</p>

<ol><li>I access the files for this site from a network-attached storage (NAS) server.</li>

<li>I edit the files in a text editor on a Windows 7 desktop computer.</li>

<li>Jekyll is on a Linux server. I log into the Linux server and run Jekyll to serve a local draft of my website, so I can preview changes in a web browser.</li>

<li>I use git to manage changes to my files. The git repo lives on the Linux server. I use GitHub Desktop on my Windows computer for commits and other simple git operations.</li>

<li>To publish my changes to my kernion.me website, I use SSH to access the web server, then use git commands to pull in the changes.</li></ol>

<p>The workflow above means that while I'm working on the seemingly simple page you're reading, I often have windows open for the text editor, an SSH dialog with the Linux server running Jekyll, a web browser, a GitHub editor, and another SSH dialog to kernion.me when I'm publishing the changes.</p>
<p>Advantages of being a technical writer are that first of all, I documented the processes and commands I need so I don't forget how everything works, and second of all, I'm used to juggling a lot of open windows at once.</p>

<p>My Jekyll theme is <a href="https://jekyllthemes.io/theme/typewriter">Typewriter</a>, a fun look that didn't require a lot of editing on my end.</p>

<p>Would I replicate this setup in the future? Certainly I wouldn't recommend it to others. I hear  Ruby runs successfully on Windows 10, although I haven't yet tried. If I used a Mac or a Linux personal workstation, this page would be a lot shorter. But I'm committed to the current process for continuing edits, because the results are worthwhile.</p>
<p>Next time, I'll tell you where the music I listen to at the gym comes from. (Hint: It's slightly more nuanced than "Spotify.")</p>



