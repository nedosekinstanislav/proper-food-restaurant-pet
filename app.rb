require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "properfood.db"}

class Product < ActiveRecord::Base
  
end

get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

post '/cart' do
  ordersInput =  params[:orders]
  @orders = parseOrders ordersInput

  erb "test #{@orders.inspect}"
end

def parseOrders ordersInput

    s1 = ordersInput.split(/,/)

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