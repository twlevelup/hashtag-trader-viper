module HashTagTrader
  module Routes
    module Registration
      def self.registered(app)
        app.get '/register/process/' do
        	haml :'register/page', :layout=>false
        end
        app.get '/register/toc/' do
        	haml :'register/toc',:layout=>false
        end
      end
    end 
  end
end
