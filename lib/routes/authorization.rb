module HashTagTrader
  module Routes
    module Authorization
      def self.registered(app)
        app.get '/auth/' do
          @configuration = Configuration.new
          haml :welcome, :layout =>false
        end

        app.post'/auth/login' do
          session[:url] = params[:url]
          redirect to("/auth/#{params[:provider]}")
        end

        app.post'/auth/register' do
          session[:url] = params[:url]
          redirect to("/auth/#{params[:provider]}")
        end

        app.post '/auth/developer/callback' do
          session[:uid] = env['omniauth.auth']['uid']
          session[:name] = env['omniauth.auth'][:info][:name]
          if session[:url] == "login"
            redirect to('/dashboard/')
          elsif session[:url] == "register"
            redirect to('/register/process/')
          else
            redirect to('/auth/')
          end
        end
  
        app.get '/auth/github/callback' do
          session[:uid] = env['omniauth.auth']['uid']
          session[:name] = env['omniauth.auth'][:info][:name]
          if session[:url] == "login"
            redirect to('/dashboard/')
          elsif session[:url] == "register"
            redirect to('/register/process/')
          else
            redirect to('/auth/')
          end
        end

      end
    end
  end
end