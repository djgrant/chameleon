# Chameleon

Chameleon is a Sass layout framework for responsive web sites and applications.

At the heart of Chameleon is the ability to "turn on" classes at different screen sizes:

```html
<div class="padded padded-small-on-mobile"></div>
```

Out of the box Chameleon adds 0Kb to your project. Generate only the classes that you need for your project.

```scss
@include classes('padded', $on: 'base');
@include classes('padded-right', $on: 'base mobile');
```

```
.padded {
  padding: 20px;
}

.padded-right {
  padding-right: 20px;
}

@media screen and (max-width: 479px) {
  .padded-right-on-mobile {
    padding-right: 20px;
  }
}
```

Chameleon selectors be used anywhere in your stylesheet  - even if they weren't generated into classes.

```scss
.myModule {
  @extend %padded;
  @extend %padded-small-on-mobile;
  @extend %padded-on-tablet;
  border: 3px dashed red;
}
```

You can also create selectors of your own using Chameleon's core mixins.

```scss
@include placeholder('myHelper') {
  color: red;
}
@include classes('myHelper', $on: 'base mobile tablet-up');
```

Multi-element modifiers provide a powerful, concise and expressive way to compose modules.

```html
<div class="row cols-spaced cols-to-rows-on-mobile">
  <div class="col-1-3"></div>
  <div class="col-1-3"></div>
  <div class="col-1-3"></div>
</div>
```