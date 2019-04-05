require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable  :sessions
    set :session_secret, "08a12de0af9b008dea23b08ec8da9becb1c3741ef0d02744f8610bd4098e151fc937b451b7b51bc38281e58c09045811e555a370ddbf1704738b615e535a29bd"
  end

  get '/' do
    erb:index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end
end
