require 'sinatra/base'
require 'sinatra/twitter-bootstrap'
require 'haml'

require_relative 'routes/index'

class HashTagTraderApp < Sinatra::Base
  set :root, File.dirname(__FILE__)

  enable :sessions

  register Sinatra::Twitter::Bootstrap::Assets
  
  register HashTagTrader::Routes::Index
end

