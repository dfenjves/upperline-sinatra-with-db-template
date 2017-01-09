require './config/environment'
require './app/models/item'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/items' do
    @items = Item.all
    erb :items
  end

  get '/items/new' do
    erb :new_item
  end

  post '/items' do
    Item.create(name: params[:name], color:params[:color])
    redirect to '/items'
  end

  get "/items/:id" do
    @item = Item.find(params[:id])
    erb :show_item
  end

end
