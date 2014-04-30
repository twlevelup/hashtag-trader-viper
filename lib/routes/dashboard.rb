module HashTagTrader
  module Routes
    module Dashboard
      def self.registered(app)
        app.get '/dashboard/' do
          haml :'dashboard/index'
        end
      end
    end
  end
end
