Chameleon
=========


### Getting started

From the command line:

`gem install chameleon`


In your Sass project:

`@import "chameleon";`


Generate some responsive grid classes:

```
@include grid-defaults();
@include classes("cols-spaced", $on: ("base" "fablet-up" "tablet-up" "desktop-up"))
@include classes("cols-to-rows", $on: ("base" "mobile" "fablet-down" "tablet-down"))
```

Pump fists in delight.
