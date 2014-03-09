require 'sinatra/base'
require 'sinatra/twitter-bootstrap'
require 'haml'

require_relative 'routes/routes'

class HashTagTraderApp < Sinatra::Base
  set :root, File.dirname(__FILE__)

  enable :sessions
  enable :inline_templates

  register Sinatra::Twitter::Bootstrap::Assets
  
  register HashTagTrader::Routes::Index
  register HashTagTrader::Routes::TwitterBootstrap
end

