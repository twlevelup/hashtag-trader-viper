require 'omniauth'
require 'omniauth-github'
require 'sinatra/base'
require 'sinatra/twitter-bootstrap'
require 'haml'

require_relative 'routes/index'
require_relative 'routes/authorization'

class HashTagTraderApp < Sinatra::Base
  def self.production?
    ENV['RACK_ENV'] == 'production'
  end
  
  set :root, File.dirname(__FILE__)

  enable :sessions

  use OmniAuth::Builder do
    provider :developer unless HashTagTraderApp.production?
    provider :github, ENV['GITHUB_API_KEY'], ENV['GITHUB_SECRET_KEY']
  end

  before do
    pass if request.path_info =~ /^\/auth\//

    callback_path = HashTagTraderApp.production? ? 'github' : 'developer'
    redirect to("/auth/#{callback_path}") unless session[:uid]
  end

  register Sinatra::Twitter::Bootstrap::Assets
  
  register HashTagTrader::Routes::Index
  register HashTagTrader::Routes::Authorization
end

