---
title: "Devops and Debugging"
date: 2018-02-22T09:56:01-05:00
draft: false
---

Today is thursday and I feel I have spend the whole week just debugging stuff. The nice part, is everything works now, and I felt no rush to be done quick because I had to go to work at my practice or the client's budget had alreasdy run out and we were losing money.
This was really good. It made me value what having time to really get to understand a problem does for the project. I'm planing to enforce this kind of mindset on myself for the rest of the batch. I tend to be hasty and programming has taught me to stop, evaluate, and plan ahead. Sadly, my part time disposition at Athelas and the reality of having clients with a small budget didin't always fit in this model, or so I felt.

## React

I had finished my application MVP last friday, and I decided to improve some parts of the code. Specifically, I hated the way I was protecting my routes, doing a *isLogedIn* check on every *<Route/>* seemed not DRY enough. 

I found two ways of abstracting that behaviour, High Order Components and A Simple wrapping Component. I wanted to try the HOCs first, they reminded me of the python decorators and seemed a commonly used pattern in the React world. 

So, this is what my HOCs looked like

```javascript

export const ProtectedRoute = (redirectTo, AlternativeComponent) => {
  const isLoged = localStorage.getItem("access_token");
  console.log(`From inside the protected views HOC we say user is ${isLoged}`);
  const renderNext = isLoged ? (
    <AlternativeComponent />
  ) : (
    <Redirect to={`${redirectTo}`} />
  );
  return props => <Route {...props} render={() => renderNext} />;
};

```

They worked just fine, so I left on Friday just feeling happy about it! Guess what? I hadn't properly tested everything. The HOCs somehow messed with the Router History, and the `history.push('/route')` method wasn't doing anything.

So after hours of not finding anything in the react-router documentation (Yeah I tried composing my views with withRouter, and I tried the untested react-router-redux) I decided to go for the Helper components.

This is what they looked like (much simpler, no?)

```javascript


const ProtectedRedirectToLogin = ({ children }) => {
  const isLoged = localStorage.getItem("access_token");
  console.log(children);
  return isLoged ? children : <Redirect to="/login" />;
};

```

Well it turns out I still have the same problem...

So while I try to figure this out, I went back to doing the non DRY routes

```jsx


<Route
            exact
            path="/main"
            render={() => {
              const isLoged = localStorage.getItem("access_token");
              return isLoged ? <HomeContainer /> : <Redirect to="/login" />;
            }}
          />

```

## Vagrant

I also had a 6h battle with Vagrant and a specific build system that required it. I had to help in a project that was build on top of [Trellis](https://roots.io/trellis/) whic seemed like an over engenieered system for WP sites to me the first time I assesed it. Now, after the battle, I am not sure, it might be awesome, but it might get in the way like this time for simpler WP sites.

The problem here was that the virtual machine could not mount (sync) my systems folder on their virtual drive. Apparently it was trying to enforce NFS v3 and my system worked with V4. Roberto was helping me along the way, and we came up with tons of different solutions, we even changed some of the basic functions for loading the box, but it still didin't help.

After hours fo experiments (trying on windows, yeah right...it did not work, enforcing system NFS version, trying to ssh in the machine and runing all of the ansible configurations by hand, thinking about spining a VPS, etc) we called on David to see if he could come up with another solution. He said he was pretty new to Vagrant, but his new set of eyes noticed we were actively declaring the use of NFS and that Vagrant by default didin't require it. I actually thought he had to be wrong and maybe he was using NFS on the back, I was wrong, he was right. By removing that bit of code from the Vagrantfile the system booted and provisioned with Ansible flawlessly. It turns out Vagrant uses FUSE by default!!! 

## Docker, Digital Ocean

with my app already finished, I want to deploy it, but I want to do it using a better way that what I am used to. I have been reading and studying Docker, and even though I am still a little confused about the ins and outs of it, and how to tackle specific problems, I think it will be something I will keep on learning so I can deploy everything.

I have created and destroyed over 5 DO machines yesterday, just doing experiments and trying to figure out stuff. Roberto showed me Docker-machine and Peter walked me through his whole express/react setup last night. I think today I will try to start a dockermachine managed instance of my app. 


