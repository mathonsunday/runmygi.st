require File.expand_path('../boot', __FILE__)
require 'crepe'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Crepe.env)
$LOAD_PATH.unshift Crepe.root unless $LOAD_PATH.include?(Crepe.root)

module RunMyGist
  class Application < Configurable
    # Set your application's default Time Zone. For more information, see
    # http://api.rubyonrails.org/classes/ActiveSupport/TimeWithZone.html
    config.time_zone = 'UTC'

    # You can also set custom config values here to use throughout your app.
    #
    # config.key = 'value'
    # RunMyGist.key # => 'value'
  end
end

# Load environment-specific configuration.
require Crepe.root.join('config', 'environment', Crepe.env)

# Load initializers.
Dir['config/initializers/*'].each { |f| require f }
