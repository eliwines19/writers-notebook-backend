# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require 'rack/cors'
use Rack::Cors do

  # allow all origins in development
  allow do
    origins ['http://localhost:3000', 'https://writersnotebook.netlify.app']
    resource '*', 
        :headers => :any, 
        :methods => [:get, :post, :patch, :delete, :put, :options],
        credentials: true
  end
end

run Rails.application
