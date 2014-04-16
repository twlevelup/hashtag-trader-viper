module HashTagTrader
  module Routes
    module Registration
      def self.registered(app)
        app.get '/register/process/' do
        	haml :'register/page'
        end
        app.get '/register/toc/' do
        	haml :'register/toc'
        end
      end
    end 
  end
end
