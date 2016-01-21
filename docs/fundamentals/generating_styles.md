# Generating styles

When you include Chameleon in a project **not a single byte of CSS is added to the stylesheet**. Chameleon exposes a library of silent selectors. To turn them into actual classes you must **declare them explicitly**.

As part of the core functionality a `classes()` mixin is provide. This takes a selector name and outputs a collection of classes.

```scss
@include classes("hidden");
```
```
.hidden {
  display: none !important;
  visibility: hidden;
}
```

An optional second argument accepts a list of screen sizes and generates additional classes that "turn on" the class on a given screen.

```scss
@include classes("hidden", $on: "base mobile");
```
```
.hidden {
  display: none !important;
  visibility: hidden;
}

@media screen and (max-width: 479px) {
  .hidden-on-mobile {
    display: none !important;
    visibility: hidden;
  }
}
```

`$on` has a default value of `base`, which generates the non screen specific class.

`$on` also accepts `all`, which generates classes for every defined screen size. 

### Read more

- [classes()](#)
- [Grid example](#)