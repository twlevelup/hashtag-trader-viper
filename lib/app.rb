require 'sinatra'
require 'erb'

class MyApp < Sinatra::Application
  enable :sessions

end

require_relative 'routes/routes'