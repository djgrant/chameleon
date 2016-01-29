# Grid

### Generating a grid

```scss
@import "chameleon";

@include defaults();
@include row-defaults();
@include col-defaults();

@include classes("cols-spaced", $on: ("base" "fablet-up" "tablet-up" "desktop-up"));
@include classes("cols-to-rows", $on: ("base" "mobile" "fablet-down" "tablet-down"));

@include classes("col-1-2", $on: "base");
@include classes("col-1-3", $on: "base");
@include classes("col-1-4", $on: "base");

@include classes("rows-spaced", $on: "base");
@include classes("cols-spaced", $on: "base");

// If you're not minfiying HTML
// Adjust this to work with your typeset
.row {
  letter-spacing: -0.3em
}
```


```html
<div class="row cols-spaced">
  <div class="col-1-2">
    <div class="panel">Half</div>
  </div>
  <div class="col-1-2">
    <div class="panel">Half</div>
  </div>
</div>
```


### A basic grid

```html
<div class="row">
  <div class="col-1-2"></div>
  <div class="col-1-2"></div>
</div>
```

### Nesting

You must not combine col- and row in one element.

```html
<div class="row">
  <div class="col-1-2">
    <div class="row">
      <div class="col-1-3">
      <div class="col-1-3">
      <div class="col-1-3">
    </div>
  </div>
</div>
```



### Reverse column order

```html
<div class="row cols-reversed">
  <div class="col-1-4"></div>
  <div class="col-3-4"></div>
</div>
```

### Column spacing (gutter)

```html
<div class="row cols-spaced">
  <div class="col-1-4"></div>
  <div class="col-3-4"></div>
</div>
```

### Row spacing (baseline gutter)

```html
<div class="rows-spaced">
  <div class="row"></div>
  <div class="row"></div>
</div>
```

### Responsive

Indicate for what devices the grid stacks.

```html
<div class="row cols-to-rows-on-mobile">
  <div class="col-1-4"></div>
  <div class="col-1-2"></div>
  <div class="col-1-4"></div>
</div>
```

When the columns turn into rows they are also targeted by the `rows-spaced` class so you can have a vertical gutter between columns and a baseline gutter when the cols become rows.

```html
<div class="row cols-spaced-big cols-to-rows-on-mobile rows-spaced-small">
  <div class="col-1-4"></div>
  <div class="col-1-2"></div>
  <div class="col-1-4"></div>
</div>
```

And for extreme control you can adjust the amount of spacing on certain devices.

```html
<div class="row cols-spaced cols-spaced-big-on-desktop-up cols-to-rows-on-tablet-down rows-spaced-on-tablet rows-spaced-small-on-fablet-down">
  <div class="col-1-4"></div>
  <div class="col-1-2"></div>
  <div class="col-1-4"></div>
</div>
```

Although that would be a bit crazy.


### Writing classes to stylesheet

To keep the stylesheet lightweight only write out the classes you need in your project. Adjust the list of devices in the second argument of the class mixin to reverse cols on certain devices:

```sass
+classes("cols-reversed", $on: (base, fablet-down, tablet-up))
```

```html
<div class="row cols-reversed-on-fablet-down">
  <div class="col-1-3"></div>
  <div class="col-2-3"></div>
</div>
```

By default the classes mixin will only write the base class to the stylesheet. Device breakpoints need to be declared.

### Supported sizes

* 1/2
* 1/3
* 1/4
* 1/5
* 1/6
* 2/3
* 2/5
* 3/4
* 3/5
* 4/5
