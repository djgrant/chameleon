### `placeholder()`

With this mixin we can declare a ruleset and using a globally declared set of media expressions it will generate placeholders.

```
// given a set of declared breakpoints

@include placeholder('hidden') {
  display: none;
}

// generates:

%hidden {
  display: none;
}

%hidden-mobile {
  display: none;
}
 
```