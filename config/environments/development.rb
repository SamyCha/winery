Rails.application.configure do
  # Verifies that versions and hashed value of the package contents in the project's package.json
  config.webpacker.check_yarn_integrity = true

  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = false

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.action_mailer.delivery_method = :smtp

 config.action_mailer.smtp_settings = {
    address: 'smtp.mailgun.org',
    port: 587,
    domain: 'sandbox5b10c5c537234bcebf73dc6602f12e39.mailgun.org',
    authentication: 'plain',
    user_name: 'postmaster@sandbox5b10c5c537234bcebf73dc6602f12e39.mailgun.org',
    password: 'b173d6735b1c092e202e538d5916148b-3b1f59cf-9258a789'
  }


# envoi via gmail:
#  config.action_mailer.smtp_settings = {
#    address: 'smtp.gmail.com',
#    port: 587,
#    domain: 'gmail.com',
   #enable_starttls_auto: true,
#    authentication: 'plain',
#    user_name: ENV["user_name"],
#    password: ENV["password"]
#  }

   config.paperclip_defaults = {
    storage: :s3,
    path: ':class/:attachment/:id/:style/:filename',
     s3_host_name: 's3-eu-central-1.amazonaws.com',
     s3_credentials: {
       bucket: 'golf-locations-2018',
       access_key_id: ENV['S3_ACCESS_KEY'],
       secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],
       s3_region: 'eu-central-1'
     }
   }

end
