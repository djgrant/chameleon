Chameleon
=========


## Getting started

### Installing in a Rails project

Add to your Gemfile:

`gem 'chameleon-sass'`

Add to your main Sass stylesheet:

`@import "chameleon";`


### Installing in a Compass project

From the command line:

`gem install chameleon-sass`

Add to the top of your Compass config file (usually config.rb):

`require 'chameleon-sass'`

Add to your main Sass stylesheet:

`@import "chameleon"`


### Installing in a Bower project

From the command line:

`bower install chameleon-sass`

If you are using Compass you can add the import path to your Compass config file (usually config.rb):

`add_import_path "bower_components/chameleon-sass/assets/stylesheets/"`

Otherwise, you will need to manually add the above path to your @import.

Add to your main Sass stylesheet:

`@import "chameleon"`


### Generating a responsive grid

One of the defining feature of Chameleon is that no CSS is generated until you explictly declare the generation of some classes.

Let's get started by adding some building blocks of a responsive grid:

```
@include grid-defaults();
@include classes("cols-spaced", $on: ("base" "fablet-up" "tablet-up" "desktop-up"))
@include classes("cols-to-rows", $on: ("base" "mobile" "fablet-down" "tablet-down"))
```
