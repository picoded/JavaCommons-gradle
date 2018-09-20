# Picoded.JavaCommons-gradle
[TMP] Note that this repository represents the larger rewrite of the library in gradle - that WILL replace picoded.JavaCommons.

Everything from here onwards will refer to it as such =)

---

# Picoded.JavaCommons

JavaCommons is a not a thin specific use case library. 

Its an extremly fat server-side general purpose library, with more then a 160+ dependency libraries (before counting nested dependencies), taking over 120+ MB in space. 

All before even including any of its own code.

![Optimize Everything! - JavaCommons in a nutshell](./docs/images/xkcd_the_general_problem.png)

The xkcd comic above accurately depicts how the project started. As this contains pretty much ALMOST EVERYTHING we used in one way or another, for a project somewhere (and still growing). 

Our new servlet project setup, is normally clone this, use a template, and start coding.

## Summary of benefits

It has one core purpose : To let application developers write : __small, efficent, code__

This is facilitated by the following features (for application developers)

+ Allow application developers to write as little backend code as possible (Basic user accounts in 10 lines of code)
+ Write infrastructure / backend independent code, switch between MySQL and NO-SQL with a single config change
+ Reduced dependency-library-hell, by never needing to add another jar. What you need is probably in the 160+ jars already.
+ Integration with vue.js (required node.js to be installed for development / compilation)

## Summary of downsides

To achieve these goals, the following compromises have been accepted

- monolithic library size : We deploy on servers, not mobile phones nor embedded devices. 100MB is nothing.
- Many many potentially unused JARS : thankfully java does a good job not loading them (http://stackoverflow.com/questions/10980483/impacts-of-having-unused-jar-files-in-classpath)

In reality though, just as the image above well illustrate. These problems do not just disappear. They are mitigated away from application to within the library. Where its "time-savings" can only been seen after deploying at scale.

## Design philosophy

![Hmmm....](./docs/images/thinking_emoji.png)

Anything in this project draws its roots from one client project or another. Generally for any project that we build, with this package. As we add on to the project. We ask this one simple question.

`Is there a good chance this could be reused elsewhere?`

If so, the code is refactored and moved to JavaCommons. Hence over time, the library grew (PS: The library was originally named ServletCommons)

With components going through one, or many iterations of meeting the following guidelines

+ KISS : Keep It Simple Stupid
+ Code maintenance is king
+ Generics over custom classes. (If you can use a Map, use it!, we do not need a class collections hell)
+ Abstract out commonly use patterns into components
+ REUSE INC.
+ 0 Java Warnings (suppress as last resort)
+ Code Coverage with unit test please

## Slicing the library

![Sandwich...](./docs/images/sandwich_on_toast.jpg)

JavaCommons is like a sandwich is made of multiple layers. Each represented by its own library package

**JavaCommons-core**

The core bread foundation. Which mainly consist of classes for the following ...

* Data conversion
* Data structures
* Java map collections query & aggregation
* Reusable enums
* Static utility classes

Just like bread, this library package forms the core foundation in which all other JavaCommon based packages are built on.
Most notably would be the `GenericConvertMap`, in which nearly all map based data structure implements, to provide get convinence to any common primitives.

**JavaCommons-dstack**

The meat in the library, in which it focuses on being an abstraction layer between the application interacting with data, and the actual backend being used.

It facilitates the concept of layering of the application data storage, across multiple providers. Such as the following ...

* My / Oracle / MS SQL
* Distributed cache
* Object storage (Google Cloud Storage / AWS)

All while maintaining the same interface for the application. Leaving the decision of the backend used, or the combination of backend's used a devops responsibility.

Its most notable claass is `DataObjectMap` which functions as a queryable `NoSQL` interface. That functions even against an SQL backend.
Followed by `DStack` which faciltates the stacking of data backend provider for devops. Such as a distributed cache with an SQL backend.

---

Hmm... where was the salt again?

With that.... lets get this rolling!

PS: "pages" in this "book" prefixed with `[Concept]` refers to meta concepts that heavily influence / explaines certain design decisions. And is not an actual specification.

-----
~~~~
other stuff (from old document : ignore as it serves as notes for now)

* Util - Butter on the bread
* Servlet - Menu, Plate, Fork and Spoons
* Frontend - Lecttuce and dressings
* PDF Generator - condiment of Mayonnaise and tomato sauce
~~~~