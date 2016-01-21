# Lists

### List without bullets

```scss
@include classes("list-bulletless");
```


```html
<ul class="list-bulletless">
  <li>One</li>
  <li>Two</li>
  <li>Three</li>
</ul>
```

### Inline list

```scss
@include classes("list-inline");

```


```html
<ul class="list-inline">
  <li>One</li>
  <li>Two</li>
  <li>Three</li>
</ul>
```

### Inline list with slashes

```scss
@include classes("list-inline");
@include classes("list-inline list-items-slashed");
```


```html
<ul class="list-inline list-items-slashed">
  <li>One</li>
  <li>Two</li>
  <li>Three</li>
</ul>
```

### Inline list with pipes

```scss
@include classes("list");
@include classes("list-inline list-items-piped");
```


```html
<ul class="list-inline list-items-piped">
  <li>One</li>
  <li>Two</li>
  <li>Three</li>
</ul>
```

### Inline list without spacing


```scss
@include classes("list");
@include classes("list-inline list-items-unspaced");
```


```html
<ul class="list-inline list-items-unspaced">
  <li>One</li>
  <li>Two</li>
  <li>Three</li>
</ul>
```