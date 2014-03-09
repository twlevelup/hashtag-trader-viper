module HashTagTrader
  module Routes
    module Index
      def self.registered(app)
        app.get '/' do
          haml :index
        end
      end
    end
  end
end
