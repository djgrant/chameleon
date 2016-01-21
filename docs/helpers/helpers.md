# Helpers

Chameleon comes with several useful helpers. These can be generated as actual CSS using the `classes` mixin.

Example 1:

```scss
@include classes("hidden");
```
```
.hidden {
  display: none !important
  visibility: hidden
}
```

```html
<div class="hidden"></div>
```

Example 2:

```scss
@include classes("padded-right", $on: ("base, mobile, fablet-up");
```
```
.padded-right {
  padding-right: 20px;
}

@media screen and (max-width: 479px) {
  .padded-right-on-mobile {
    padding-right: 20px;
  }
}

@media screen and (min-width: 480px) {
  .padded-right-on-fablet-up {
    padding-right: 20px;
  }
}
```
```html
<div class="padded-right"></div>
<div class="padded-right-on-mobile"></div>
<div class="padded-right-on-fablet-up"></div>
```