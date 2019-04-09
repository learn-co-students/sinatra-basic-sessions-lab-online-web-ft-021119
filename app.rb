require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session["item"] = params[:item]
        @session = session
        #key should be item 
        #value should be the item the user entered to the purchase
    end
end