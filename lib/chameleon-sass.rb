module ChameleonSass
  VERSION = "0.0.1"
  DATE = "2014-08-12"

  class << self

    def load
      if compass?
        register_compass
      elsif sass?
        add_sass_load_path
      else
        add_sass_load_path_to_env
      end
    end

    def gem_path
      File.expand_path(File.join(File.dirname(__FILE__), '..'))
    end

    def assets_path
      File.join(gem_path, 'assets')
    end

    def stylesheets_path
      File.join(assets_path, 'stylesheets')
    end

    def compass?
      defined? ::Compass
    end

    def sass?
      defined? ::Sass
    end

    def register_compass
      ::Compass::Frameworks.register(
        'chameleon-sass',
        :path => gem_path,
        :stylesheets_directory => stylesheets_path
      )
    end

    def add_sass_load_path
      ::Sass.load_paths << stylesheets_path
    end

    def add_sass_load_path_to_env
      ENV["SASS_PATH"] = [
        ENV["SASS_PATH"],
        stylesheets_path
      ].join(File::PATH_SEPARATOR)
    end

  end
end