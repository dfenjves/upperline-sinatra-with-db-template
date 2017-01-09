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
    @item = Item.create(name: params[:name], color:params[:color])
    @error = false
    if @item.valid?
      @error = true
      erb :new_item
    else
      redirect to '/items/new'
    end
  end

  get "/items/:id" do
    @item = Item.find(params[:id])
    erb :show_item
  end

  get "/items/:id/edit" do
    @item = Item.find(params[:id])
    erb :edit_item
  end

  post "/items/:id" do
    @item = Item.find(params[:id])
    @item.update(name: params[:name], color:params[:color])
    redirect to "/items/#{params[:id]}"
  end

  get "/items/:id/delete" do
    @item = Item.find(params[:id])
    @item.delete
    redirect to '/items'
  end


end
