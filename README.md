
# demo-rstrap

<!-- badges: start -->
<!-- badges: end -->

This repo contains an example site to see how rendering using `rstrap` instead of `bootstrap` looks like.

## What is rstrap ? Why woud I need this ?

`rstrap` is a forked of Bootstrap specially made to be used with rmarkdown for default feature. 

In most case this is not to be used. You would need this only 

* when you can't use Bootstrap own distribution for any reason, 
* but you would be able to use a fork maintained and provided by us.

If you wandered the web and stumble here instead of being pointed to this repo, then it means you probably don't need this.

## Example

See the demo site to see how it looks like: https://cderv.github.io/demo-rstrap/ 

## Building this website

* We use `renv` for dependency management. `renv::restore()` will install every required dependencies
* We use a `Makefile` to build the website. This allows to build the demo website using two different `html_document()` variations: 
  * default `render_site()` happens while rstrap mode has been opt-in
  * Reference page is build by opting-out rstrap mode to use the default Bootstrap 4 theming of `html_document()`. 
* This website is built automatically using those 2 tools by a Github action workflow on every push to the main branch.
