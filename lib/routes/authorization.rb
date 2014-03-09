module HashTagTrader
  module Routes
    module Authorization
      def self.registered(app)
        app.post '/auth/developer/callback' do
          session[:uid] = env['omniauth.auth']['uid']
          redirect to('/')
        end
      end
    end
  end
end