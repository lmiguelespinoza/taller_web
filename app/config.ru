# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run App::Application
web: bundle exec ruby bar00.rb -p $PORT