---
layout: page
title: About This Site
permalink: /about/
---

<p>My portfolio website looks pretty simple ... but the process of editing and publishing it is surprisingly complex.</p>

<p>My plan was to use an easily customizable Jekyll theme with GitHub Pages to produce and publish a simple portfolio site. A few challenges arose:</p>
<ul><li>I work primarily on a Windows 7 desktop at home. After numerous attempts, it became obvious that Ruby, which Jekyll requires, wouldn't play nice on this operating system.</li>
<li>I wanted my writing samples password protected. They include documentation for products that have updated significantly since I worked on the content, and I don't want users finding outdated processes. Some are draft PDFs and I'm sure my former employers wouldn't like unattractive copies of their branded content made public. GitHub doesn't accommodate partial password protection of a website (to my knowledge).</li>
</ul>
<p>You might wonder why I didn't use WordPress or a similar CMS. There were moments when I wondered that too. This is a small, static website that doesn't require dynamic content management. In addition, my portfolio project has been an excellent way for me to maintain and improve my Jekyll and Git skills. And as my web admin tells me, hacking concerns often mean frequent CMS updates and upgrades.</p> 
<p><strong>How it all works</strong></p>
<p>Full disclosure: A Linux administrator/web admin guided me through a lot of this setup. It involves workarounds I could not have devised myself. I want to acknowledge and express my gratitude for this assistance.</p>
<p>Follow along carefully -- this is a little bit of a shell game:</p>
<ol><li>I edit my files in a text editor on a Windows 7 desktop computer.</li>
<li>My git repo is on a network-attached storage (NAS) server. I use GitHub to manage my files there from my local desktop.</li>  
<li>Jekyll is on a Linux server. I use SSH to access Jekyll from my Windows desktop so I can preview my changes as I make them locally. I always keep this little window visible in a corner of my screen so I can see when the website regenerates after I save changes. Then I know when to refresh the web browser and view an updated preview.</li>
<li>To publish my changes to my kernion.me website, I use SSH to access the web server, then use git to pull in my changes and additions.</li></ol>
<p>The above complicated process means that while I'm working on the seemingly simple page you're reading, I often have windows open for the text editor, an SSH dialog with the Linux server running Jekyll, a web browser, a GitHub editor, and another SSH dialog to kernion.me when I'm publishing the changes.</p>
<p>The advantages of being a technical writer are that first of all, I documented all the processes and commands I need so I don't forget how these processes work, and second of all, I'm used to juggling a lot of open windows at once.</p>

<p>My Jekyll theme is <a href="https://jekyllthemes.io/theme/typewriter">Typewriter</a>, a fun look that didn't require a lot of editing on my end.</p>

<p>Would I replicate this setup in the future? Certainly I wouldn't recommend it to others. I hear  Ruby runs successfully on Windows 10, although I haven't yet tried. If I used a Mac or a Linux desktop or laptop, this page would be a lot shorter. But I'm currently committed to the process for continuing edits, because the results are worthwhile.</p>
<p>Next time, I'll tell you where the music I listen to at the gym comes from. (Hint: It's a little bit more nuanced than "Spotify.")</p>



