# How it works

```html
<img class="hidden" />
<img class="hidden-on-mobile" />
```

In order to "turn on" a class at a certain screen size we have to declare that class inside of a media query. 

```scss
.hidden {
  display: none;
}

@media screen and (max-width: 480px) {
  .hidden-on-mobile {
    display: none
  }
}
```

To clean this up, our instinct may be to reach for Sass's `@extend`. However, use of `@extend` inside a media query is not possible.

```scss
@media screen and (max-width: 480px) {
  .hidden-on-mobile {
    @extend .hidden;
  }
}
```
```
You may not @extend an outer selector from within @media.
You may only @extend selectors within the same directive.
```

Instead we can opt to use a `@mixin`.

```scss
@mixin hidden {
  display: none;
}

.hidden {
  @include hidden;
}

@media screen and (max-width: 480px) {
  .hidden-on-mobile {
    @include hidden;
  }
  .another-selector {
    @include hidden;
  }
}
```
```
.hidden {
  display: none;
}

@media screen and (max-width: 480px) {
  .hidden-on-mobile {
    display: none;
  }

  .another-selector {
    display: none;
  }
}

```

This mixin solution works well but it causes the ruleset to get repeated more than necessary in the compiled code. 

It turns out that we don't need to abandon the @extend directive altogether. It is possible to @extend inside of a media query - just so long as the placeholder selector that is getting extended is declared inside of a matching media query.

```scss
@mixin hidden {
  display: none;
}

%hidden {
  @include hidden;
}

@media screen and (max-width: 480px) {
  %hidden-on-mobile {
    @include hidden;
  }
}

.hidden {
  @extend %hidden;
}

@media screen and (max-width: 480px) {
  .hidden-on-mobile {
    @extend %hidden-on-mobile;
  }

  .another-selector {
    @extend %hidden-on-mobile;
  }
}
```
```
.hidden {
  display: none;
}

@media screen and (max-width: 480px) {
  .hidden-on-mobile, .another-selector {
    display: none;
  }
}
```

This works well and gives us a lot of flexibility. It may not make a huge difference after GZIP, but using @extend rather than a @mixin will result in a smaller stylesheet.

We've solved the problem of re-declaring an entire ruleset for every media query. But we have a second issue: writing out all those media queries and placeholder selectors. Such a lot of work just to declare one style!

The first step is to settle on, up front, a set of media queries that will be used across the project.

```scss
$mqs: (
  'mobile': '(max-width: 480px)',
  'tablet': '(min-width: 481px) and (max-width: 1024px)',
  'tablet-down': '(max-width: 1024px)',
  'tablet-up': '(min-width: 1025px)'
);
```

It would be feasible to loop through the media queries and for each one create a class. Doing so, however, would result in 5x as many classes. Maybe we should be a bit more selective in our approach.

A better solution would be to generate a version of the class for a given media queries on a case by case basis.

```scss
@mixin class-generator($selector, $breakpoint) {
  @media screen and #{map-get($mqs, $breakpoint)} {
    .#{$selector}-on-#{$breakpoint} {
      @content;
    }
  }
}

@include class-generator('hidden', 'tablet') {
  display: none;
}
```
```
@media screen and (min-width: 481px) and (max-width: 1024px) {
  .hidden-on-tablet {
    display: none;
  }
}
```

That's a great start. The next step step is to make the selector available elsewhere in the project.
