# Naming convention

Chameleon follows a strict naming convention as outlined in the [Authoring guidelines](authoring_guidelines.md). As a result, selectors should be **predictable and easy to understand**.

The selector: 

`block-element-modifier` 

can be expressed as:

`noun-noun-adjective`

Much **the same as in normal speech**, we do not need to use extra punctuation to make the meaning of a selector clear. Using **consistent word order and the correct *parts of speech*** (noun, adjective, verb etc.) the meaning of a selector can be conveyed clearly.

`.media` = noun = an actual element

`.media-thumb` = noun-noun = a child element

`.padded` = adjective = a class that modifies an element

`.aligned-center` = adjective-noun = a modifier of a certain type

`.hidden-on-mobile` = adjective-preoposition-noun = a modifier that takes affect on certain media.


Although the naming convention is strict, the selectors, being based on spoken English, are inherently predictable and easy to understand.

### Descibring children

Multi-element selectors provide a powerful mechanism to modify a set of elements.

Instead of:

```html
<div class="row">
  <div class="col-1-3 padded-right"></div>
  <div class="col-1-3 padded-right"></div>
  <div class="col-1-3"></div>
<div>
```

we can write:

```html
<div class="row cols-spaced">
  <div class="col-1-3"></div>
  <div class="col-1-3"></div>
  <div class="col-1-3"></div>
<div>
```

**Rule of thumb**: child elements will always be targeted by a **plural noun**.
