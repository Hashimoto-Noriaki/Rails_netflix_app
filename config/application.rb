# The main application class for RailsNetflixApp.
#
# This class is responsible for configuring the Rails application,
# setting defaults, and managing application-wide settings.
module RailsNetflixApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    # Set the default time zone
    config.time_zone = 'Tokyo'
  end
end
