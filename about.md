---
layout: page
title: About This Site
permalink: /about/
---

<p>This portfolio site is a tribute to the power of determination and frankly, sheer stubborness over the challenge of running Ruby and Jekyll on a Windows platform. To be more specific, on Windows 7.</p>

<p>My original plan was to use an easily customizable Jekyll theme with GitHub Pages to create and develop a simple portfolio site. It sounded straightforward, but challenges arose:</p>
<ul><li>Did I mention I was working primarily on a Windows 7 desktop? After numerous attempts, it became obvious that Ruby wasn't going to play nice on this platform.</li>
<li>I wanted my writing samples password protected. Some document products that still exist but have updated significantly, and I don't want to increase the probability of users finding outdated content. Also, some are draft PDFs and I'm sure my former employers wouldn't want unattractive copies of their branded content made public. GitHub doesn't accommodate partial password protection of a website (to my knowledge).</li>
</ul>
<p>You might wonder why I didn't use WordPress, Drupal, or a similar CMS. There were moments when I wondered that too. But that's a lot of content management power for what is a very simple website once it's established. In addition, this project has been an excellent way for me to maintain and improve my Jekyll and Git skills. And it's important to remember that the price of convenience on the front end of a CMS is the greater inconvenience on the back end when hacking concerns require frequent updates and upgrades.</p> 
<p><strong>How we did it</strong></p>
<p>Full disclosure: A Linux administrator/web expert guided me through a lot of this setup. It's complicated and involves workarounds I would not have thought of doing. I want to acknowledge and express my gratitude for this assistance.</p>
<p>Follow along carefully -- this is a little bit of a shell game:</p>
<ol><li>I edit my files on a Windows 7 desktop computer.</li>
<li>My git repo is on a network-attached storage (NAS) server. I use GitHub to manage my files there from my local desktop.</li>  
<li>Jekyll is on a Linux server. I use SSH to access Jekyll from my local desktop so I can preview my website changes as I make them. I always keep this little window visible in a corner of my screen so I can see when the website regenerates after I save changes.</li>
<li>To publish my changes to my website, I use SSH to access the web server, then use git to pull in my changes and additions.</li></ol>
<p>The above complicated process means that while I am working on this seemingly simple page, I often have windows open for text editor (where I edit these docs), an SSH dialog with the Linux server running Jekyll so I can process my changes, a web browser so I can preview those changes, a GitHub editor, and another SSH dialog when I'm publishing the changes.</p>
<p>The advantage to being a technical writer is that first of all, I documented all the processes and commands I need to make these processes work, and second of all, I'm used to juggling a lot of open windows at once.</p>

<p>My Jekyll theme is <a href="https://jekyllthemes.io/theme/typewriter">Typewriter</a>, a fun look that didn't require a lot of editing on my end.</p>

<p>Would I replicate this setup in the future? Certainly I wouldn't recommend it to others. I hear that Ruby can run successfully on Windows 10, although I haven't yet tried it. If I used a Mac or a Linux computer at home, I suspect this page would be a lot shorter.</p>



