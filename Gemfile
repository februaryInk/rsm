source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# The essential Rails gem.
gem 'rails', '5.2.0'

# Add browser-specific CSS prefixes automatically.
gem 'autoprefixer-rails'

# Pretty print structures in the console using `ap`.
gem 'awesome_print'

# Load environment variables from .env.
gem 'dotenv-rails'

# Import the Font Awesome icons.
gem 'font-awesome-rails'

# Use HAML markup.
gem 'haml-rails'

# Use image variants with Rails's Active Storage.
gem 'image_processing'

# Use the JavaScript library jQuery.
gem 'jquery-rails'

# Transform images for use with Rails's Active Storage.
gem 'mini_magick'

# Use the PostgreSQL database gem.
gem 'pg'

# Use stylesheets to style emails rather than having to write everything inline.
gem 'premailer-rails'

# Use the web server Puma.
gem 'puma'

# Use SCSS for stylesheets.
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

source 'https://rails-assets.org' do
  # Import the lightweight Unsemantic CSS grid.
  gem 'rails-assets-unsemantic'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console.
  gem 'byebug', :platform => :mri

  # Listen to file modifications.
  gem 'listen', '~> 3.0.5'

  # Access a console on exception pages or by calling 'console' in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem.
gem 'tzinfo-data', platforms: [ :mingw, :mswin, :x64_mingw, :jruby ]
