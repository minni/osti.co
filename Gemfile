source 'http://rubygems.org'

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'mysql2'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
#group :development do
#  gem 'ruby-debug19'
#end

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# REFINERY CMS ================================================================

# Specify the Refinery CMS core:
gem 'refinerycms',              '= 0.9.9'

group :development, :test do
  # RSpec
  gem 'rspec-rails',            '= 2.3'
  # Cucumber
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'launchy'
  gem 'gherkin'
  gem 'spork' unless Bundler::WINDOWS
  gem 'rack-test',              '~> 0.5.6'
  gem 'json_pure'
  # Factory Girl
  gem 'factory_girl'
  gem "#{'j' if RUBY_PLATFORM == 'java'}ruby-prof" unless defined?(RUBY_ENGINE) and RUBY_ENGINE == 'rbx'
  # Autotest
  gem 'autotest'
  gem 'autotest-rails'
  gem 'autotest-notification'
end

# END REFINERY CMS ============================================================

# USER DEFINED


# Specify additional Refinery CMS Engines here (all optional):
gem 'refinerycms-generators',   '~> 0.9'
# gem 'refinerycms-inquiries',    '~> 0.9.9.9'
# gem 'refinerycms-news',         '~> 1.0'
# gem 'refinerycms-portfolio',    '~> 0.9.9'
# gem 'refinerycms-theming',      '~> 0.9.9'
# gem 'refinerycms-search',       '~> 0.9.8'
# gem 'refinerycms-blog',         '~> 1.1'
## COMMAND gem19 list | grep refinery
## SEARCH  ^refinerycms-(.*) \((.*)\)$
## REPLACE gem 'refinerycms-$1', '~> $2'
gem 'refinerycms-theming', '~> 0.9.9'
gem 'refinerycms-tip-of-the-day', '~> 0.1.1'
gem 'refinerycms-translations', '~> 0.3'
###gem 'refinerycms-i18n', '~> 0.9.9.7'
gem 'refinerycms-blog', '~> 1.1'
gem 'refinerycms-news', '~> 1.0'
gem 'refinerycms-portfolio', '~> 0.9.9'
gem 'refinerycms-map', '~> 0.2.0'
gem 'refinerycms-menus', '~> 1.0'
gem 'refinerycms-search', '~> 0.9.8'
gem 'refinerycms-events', '~> 0.0.4'
gem 'refinerycms-page-images', '~> 0.9.9'
####
####gem 'refinerycms-brushart_logo', '~> 0.1.2'
####gem 'refinerycms-image_rotators', '~> 0.1.2'
####gem 'refinerycms-inquiries', '~> 0.9.9.9'
####gem 'refinerycms-masthead', '~> 0.0.4'
####gem 'refinerycms-multiform', '~> 0.1.11'
####gem 'refinerycms-multiform-email-action', '~> 0.1.2'
####gem 'refinerycms-white_papers', '~> 1.0.1'
####gem 'refinerycms-convertor', '~> 0.0.5'



# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n',         '~> 0.9'


# END USER DEFINED
