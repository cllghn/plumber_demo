# Brief Plumber Demo

So you are interested in web API's but don't know where to start as an R user. One launchpad is the `plumber` library, which advertises itself as the tool that ["gives you the ability to automatically generate and serve an HTTP API from R functions using the annotations in the R documenation around your functions."](https://cran.r-project.org/web/packages/plumber/index.html). 

In this brief document, my goals are threefold. First, I will walk you through a boilerplate example expertly lifted from the [`plumber` documentation](https://www.rplumber.io/index.html). Next, I will lift an example from a demonstrate I did years ago for the [CSG Justice Center](https://www.rplumber.io/index.html). Finally, I will set up some resources for those interested in diving deeper into the subject of building web API's with `plumber`. 

Before you get started, install and launch the tool:

```
install.packages("plumber")
```

Assuming you did not get any catastrophic error messages when running the command above, your are now ready to move forward with this walkthrough 🚀.

## An Abridged Introduction

If your curiosity has been piqued, you've probably already googled the term *"R plumber"* and probably found the [documentation](https://www.rplumber.io/index.html) expertly put together by the package authors.  

I have created a small example on this repo largely to highlight a couple of ideas. You will find those under the `plumber.R` file.

To run it, clone it. Then use the following commands:

```
library(plumber)
root <- pr('plumber.R')
pr_run(root, port = 8000)
```

Check it out with CURL:

```
curl http://127.0.0.1:8000/echo
```

With Swagger:

```
http://127.0.0.1:8000/__docs__/
```

Or your browser!

## On the Web

This section is under construction 🚧... I mostly copied what was done [here](https://gist.github.com/jamesmaino/8a19db39547e0f88bc855df45fa638e7) (plus or minus some Git)

## Other examples?

Funny enough I had put something together for my first call with CSG Justice Center. You can find that [here](https://github.com/cllghn/ps50sr).