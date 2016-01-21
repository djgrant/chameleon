# Player

The player object maintains the aspect ratio of media players when they are resized. The media player will expand or shrink to the size of its parent element whilst preserving a 16:9 aspect ratio.

```scss
@include classes('player-wrapper');
@include classes('player');
```

```html
<div class="player-wrapper">
  <iframe 
    class="player" 
    src="//www.youtube.com/embed/SCNIBV87wV4" 
    frameborder="0">
  </iframe>
</div>
```