module HashTagTrader
  module Routes
    module Index
      def self.registered(app)
        app.get '/' do
          'Welcome to HashTagTrader'
        end
      end
    end
  end
end
