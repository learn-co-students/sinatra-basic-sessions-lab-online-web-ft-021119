require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions
        set :sessions_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    end

    get '/' do 
        
        erb :index
        
    end

    post '/checkout' do 

        session[params.keys[0]] = params.values[0]
        @session = session

        # binding.pry

       erb :session_hash
    
    
    end



end