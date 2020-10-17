require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "properfood.db"}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

post '/place_order' do
  @order = Order.create params[:order]
  erb :order_placed
end

post '/cart' do
  # Получаем список параметров
  @orders_input =  params[:orders_input]
  @items = parseOrdersInput @orders_input

  # Проверяем что корзина пуста
  if @items.length == 0
    return erb :cart_is_empty
  end

  #Выводим список в корзине 
  @items.each do |item|
    item[0] = Product.find(item[0])
  end
  
  #Возвращаем представление по-умолчанию
  erb :cart
end

def parseOrdersInput orders_input

  s1 = orders_input.split(/,/)
  arr = []

  s1.each do |i|
    s2 = i.split(/\=/)
    s3 = s2[0].split(/_/)

    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]
    arr.push arr2
  end
  return arr
end