require 'omniauth'
require 'sinatra/base'
require 'sinatra/twitter-bootstrap'
require 'haml'

require_relative 'routes/index'
require_relative 'routes/authorization'

class HashTagTraderApp < Sinatra::Base
  set :root, File.dirname(__FILE__)

  enable :sessions

  use OmniAuth::Builder do
    provider :developer
  end

  before do
    pass if request.path_info =~ /^\/auth\//

    redirect to('/auth/developer') unless session[:uid]
  end

  register Sinatra::Twitter::Bootstrap::Assets
  
  register HashTagTrader::Routes::Index
  register HashTagTrader::Routes::Authorization
end

