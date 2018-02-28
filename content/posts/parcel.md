---
title: "Parcel testing, is it a good idea?"
date: 2018-02-27T09:56:01-05:00
draft: false
---

Yesterday James and I decided to test parcel as React/Redux project bundler. At first it seemed magical, we just removed Webpack and everything just worked, we could even import the root scss file directly into our index.html and it would take care of everything. So much magic came at a cost we are still assesing though.

1. If you import an empty scss file, **it breaks**
2. If you import the same file (js or scss/css) from your html and your main .jsx file, **it breaks**
3. Hot reloading with redux is complicated. We are looking at different ways to achive it. Doing it wrong can cause 2 different problems:
	1. It triggers an endless recursive call and exceeds the stack limit **it breaks**
	2. It messes with the store, in my case, it wasn't triggering Thunk events.

	

### Snippets

* Risk of rain didin't work
* Walked home again yesterday
* Had a great talk with Perri about the Agency Market