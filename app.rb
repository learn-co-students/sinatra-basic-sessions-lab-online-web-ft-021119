require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :'index'
  end

  post '/checkout' do
    item = params[:item]
    @session = session
    @session['item'] = item
  end
end
