module HashTagTrader
  module Routes
    module TwitterBootstrap
      def self.registered(app)
        app.get '/twitter-bootstrap' do
          haml :index
        end
      end
    end
  end
end