---
title: "Docker...Docker...Docker"
date: 2018-02-26T09:56:01-05:00
draft: false
---

Last week I decided to finally tackle Docker. As always, I set myself the goal to be done with it at most by friday night. I maged to, on friday at 11pm at my house, but it was hard as hell.

I have a bit of DevOps experience, I mostly know how to configure linux servers by hand, and have used tools such as Pythons Fabric library, I have even played or worked on allready built Docker projects, but I felt I needed to understand it more, and see how to deploy more complex projects.

After a day of research my goal was clear, I wanted to be able to deploy **many** projects to the same Digital Ocean droplet to save money. This is going to be for my personal projects, so money matters. 

I would be using a Docker Nginx reverse proxy image that had an automatic discovery feature that would let other docker projects (with the right directives) attach to it and would generate the required server directives for it.

This was hard. I am still figuring out my optimal workflow with it, but after spending 3 days of frustration with Docker, I realized I was frustrated with all the outdated courses, resources and blog posts around it. Pairing with Laurent and going through Peter's code really gave me an insight on how I should be aproaching the problem, and in the end I would recommend to just go through the docker documentation, playing with dockerfiles and docker compose and break things. I usually understand more after breaking things and wondering what went wrong.

I have finished to setup my Production docker-compose.yml file,and now I have to figure out how to use Docker machine for deployment, but I finally feel comfortable enough aorund the ecosystem to work with it.

I am having some troubles with the CORS headers, both apps (front and back) are being served through the same NGINX proxy on the same */etc/hosts domain* and I still get the CORS rejections by the server.



### Snippets

* My dad had a layover here for a few hours and we went for amazing pizza
* I got a freelance job with a great client via Roberto, will work on it on the weekends
* I went to Ludi's secret birthday party, was really fun.
* Pablo invited us all over for brunch, we had a great Lomo saltado and Tacu tacu brunch finished byt a tasty rice pudding with mango.
* Found my 4 pairs of onitsuka tigers (yeah, for to replace the 4 I got 8 years ago)
* Got up to date with Walking Dead comic, damn it's good.
* Tried Magnolia's banana pudding...I don't want to know where Magnolia is.
