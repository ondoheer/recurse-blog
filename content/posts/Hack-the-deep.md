---
title: "Hack the Deep"
date: 2018-02-21T09:56:01-05:00
draft: false
---

**DISCLAIMER: it seems the website theme doesn't recognize the images direction and just shows them all in landscape, I don't think I'll fix this**


From february 9 to 11 I joined some recursers at the [Hack the Deep](https://www.amnh.org/calendar/hackathon-hack-the-deep) Hackaton. It was amazing.

Different to other Hackatons, it wasn't an open project one. The American Museum of Natural History had worked with some of their scientists to come up with challenges they needed technical skills to solve. These challanges were all marine/ocean related, but ranged from working with trilobite's fosils to tracking the spread pattern of oils spills in the ocean.

Our RC team was conformed by Katie, Kristen, Ana, Emma and me, and as we realized on our first meeting, none of us had Machine Learning or Computer Vision skills, which were required to tackle many of the challenges. 
We had decided to tackle what seemed as an easy Computer Vision problem that required us to analize trilobite fossils, and as a backup plan creating a crowdsourcing  tool for volunteers to clasify trilobites (many of us had fullstack experience)

### Friday Evening

We got to the museum at 5 pm and were welcomed by a large number of volunteers and pizza! We got to wander around the museum a bit, it was closed so it felt like a victorian anthopological society club 

![Imagen](/img/hackaton7.jpg) 
![Imagen](/img/hackaton5.jpg) 
![Imagen](/img/hackaton6.jpg) 
![Imagen](/img/hackaton4.jpg)

The Scientists presented their projects at the auditorium, and I think that made us all rethink our challenge choice. All of the projects seemed really interesting, but some seemed like they would have a larger impact on the scientists work.

### Saturday all day

So, this was it! The hackaton began at 2pm. We were received with a nice bag of swag that included everything the organizers thought we might need for a night of **hacking**, coffee chocolate beans, ear plugs, headphones, water bottle (which I lost) USB sticks, toy puzzles???, etc, here is a picture of it.

![Imagen](/img/swag.jpg) 

While we were queueing, on Kristen suggestion, we decided to switch challenges for the largest one. We had actually avoided it because it said at least 3 teams were rerquired to tackle it, but it sounded really important.

Basically, the museum has over 33 million specimens cataloged in one or another way, but sadly many of them don't fit any cataloging standard. We were to work with the marine catalog, which were many spreadsheets with over 200 columns and thousands of rows). 

The whole project was divided in three areas

#### 1. Cleaning the data

The excel sheets were messy, some lacked data, others had lot's of typos (Liam instead of Lima for example) and the date formats were amost stuff like:

* 1902-02-23
* 11
* 1890 xi 
* 2/2/20
* 1945 october

The goal was to clean as much data as posible for the other tasks to be completed

#### 2. Showing the data

With the dates and location inputs cleaned, this task implied finding the most precise geolocation for each item (long and lat in decimal notation). With this, interactive maps could be created that would show where in the world and when whci specimens were found. This would also allow to see any changes in population density across the years for certain specimens.

#### 3. Tools for generating clean data

A third task was to come up with an online tool so voulunteers could enter the data, this tools has to have a validation process that would enforce valid location names, long and lat would be gotten automatically, and dates would all have the same format.


### The actual team and hacking

So, each task was large by itself, so somehow we started joining other small teams or single hackers that wanted to tackle the same problem, and ended up with a massive 15+ person team. We divided us into data cleaners and application builders, and started hacking.

One thing I loved about the team, was that usually it's hard to get developers with similar backgrounds working together, for example, we had 6 fullstack developers, but one worked in Ruby, 2 worked in Node, one worked in python, another in Java and another in C#. Instead of fighting over who would do what, we just asked eachother who was the most excited to help with each part of the project, and three of us decided to help with other parts of the process instead of doing backend. 

I took part in creating diferent python tools or scripts for reading the csv files, validating dates, paired with Katie for a bit on their geo localization tool, saw Ana work on data analysis for the items geolocation around the world, and paired with Kristen on one functionality for the Web tool for generating clean data.

It was amazing how in the end, 30 mins prior to the end of the hackaton, all parts of the process assembled together and real clean data was being served to a node backend API that would then parse it and send it to the Data visualization tool.

### The night at the museum

* Food was AMAZING
* It was cold as hell, barely slept more than 30 mins without waking up from the cold.
* They didn't allow us to go visit the dinosaurs at night!
* I slept next to a massive walrus
* They kept intwrrupting the hackaton to organize nice events, like a cocktail (good drinks and amazing cheese), and a private observatory show. How dare they!!!

#### Some pictures

![Imagen](/img/hackaton1.jpg)
![Imagen](/img/hackaton2.jpg)

