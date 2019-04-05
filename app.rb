require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do #Params: {"item"=>"", "click_button"=>"Submit"}
    @session = session #{"session_id"=>"8ee7dcd1f622517803d4bb7b1c8242f2394978da02174bf9ac1e5b04d1c86e4a", "csrf"=>"1T
                        # j3lfjsj6nfW/qYvIHh3KXkD3w3wVr4PpKLJvko42E=", "tracking"=>{"HTTP_USER_AGENT"=>"61bcb06fd4a2b10c143
                        # 297fab8b334e8575c646e"}}
    your_item = params[:item]
    @session[:item] = your_item
    erb :checkout
  end

end
