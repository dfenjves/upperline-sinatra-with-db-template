require './config/environment'
require './app/models/item'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @items = Item.all
    erb :index
  end

  post '/new' do
    Item.create(name: params[:name], color:params[:color])
    redirect to '/'
  end

end
