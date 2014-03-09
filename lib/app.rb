require 'sinatra'
require 'erb'

class HashTagTrader < Sinatra::Base
  enable :sessions

end

require_relative 'routes/routes'