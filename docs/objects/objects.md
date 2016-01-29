# Objects

From the OOCSS [documentation](https://github.com/stubbornella/oocss/wiki): 

> A CSS “object” is a repeating visual pattern.

Chameleon contains a few basic layout objects. Unlike [helpers](helpers.md), they are composed of several elements.

Classes for each element need to be declared individually.

```scss
@include classes('media');
@include classes('media-thumb');
@include classes('media-body');
```


<!-- in future

```scss
@include object-classes('media');
```
-->
