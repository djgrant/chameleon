# Extending Chameleon

You can create selectors of your own using the `placeholder()` mixin.

```scss
@include placeholder('myHelper') {
  color: red;
}
```

This can be exposed, like any other Chameleon selector, using the `classes()` mixin.

```scss
@include classes('myHelper', $on: 'base mobile fablet-up');
```
```
.myHelper {
  color: red;
}

@media screen and (max-width: 479px) {
  .myHelper-on-mobile {
    color: red;
  }
}

@media screen and (min-width: 480px) {
  .myHelper-on-fablet-up {
    color: red;
  }
}
```

### Monkey patching

If you're not happy with the ruleset of a certain Chameleon selector you can overwrite it.

```scss
@include placeholder('hidden') {
  display: none; // remove use of !important
}
```


### Read more

- [placeholder()](placeholder.md)