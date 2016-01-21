# Installation

### NPM

From the command line:

```bash
npm install chameleon-sass
```

In your main Sass stylesheet:

```scss
@import "chameleon-sass/manifest";
```

This assumes you are using a tool like https://www.npmjs.com/package/sass-import-modules to resolve the paths to npm packages. If you're not then you can always use the full path:

```scss
@import "node_modules/chameleon-sass/manifest";
```



### Compass

From the command line:

```bash
gem install chameleon-sass
```

Add to the top of your Compass config file (usually config.rb):

```ruby
require 'chameleon-sass'
```

Add to your main Sass stylesheet:

```scss
@import "chameleon";
```

### Rails asset pipeline
Add to your Gemfile:

```ruby
gem 'chameleon-sass'
```

Add to your main Sass stylesheet:

```scss
@import "chameleon";
```


### Bower

From the command line:

```bash
bower install chameleon-sass
```

```scss
@import "bower_components/chameleon-sass/manfiest";
```

### NPM/Bower with Compass

If you are using Compass you can add the import path to your Compass config file (usually config.rb):

```ruby
add_import_path "bower_components/chameleon-sass/assets/stylesheets/"
```

Add to your main Sass stylesheet:

```scss
@import "chameleon";
```