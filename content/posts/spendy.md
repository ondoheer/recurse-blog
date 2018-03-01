---
title: "Spendy alpha launch!"
date: 2018-03-01T09:56:01-05:00
draft: false
---

Yesterday I started the day by adjusting my css code to work *decently* on all devices. I felt I couldn't start looking into deployment until this was ready. Thanks to **Martín el Coach** and his great media queries mixins, this took only about 2 hours. This was supposed to be my task for the day, so I started solving minor issues. 
At lunch we wen't for some cheap chinese and a stroll at the park (James, Lily, Ana and me), then I went to book my Yoga classes.

When I came back it was still early (around 3pm) so I decided it was time to work with Docker Machine.
I had to jump through some hurdles, I still don't like how it takes over the context of that terminal, and how easy that could turn bad. 

Things I had to do that were tricky:

* Write my dpeloyment scripts
* Make changes into my apps so they would use different configs at Production
* Config NIGX proxy to allow for CORS access from the subdomain

Things I need to change 

* Add SSL support with let's encrypt
* Add a DB backup system
* Write a python cli tool to handle my docker machine operations

So, finally, [Spendy][//spendy.site] is live! It's an alpha release, test at your own risk!