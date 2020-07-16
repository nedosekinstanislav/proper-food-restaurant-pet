class AddProducts < ActiveRecord::Migration[6.0]
  def change
    Product.create :title => 'Pizza', :description => 'Вкусная пицца на тонком тесте', :price => 500, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/img/pizza.jpg'
    Product.create :title => 'Roll', :description => 'Вкусные роллы прямо из Японии', :price => 600, :size => 5, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/img/roll.jpg'
    Product.create :title => 'Burger', :description => 'Сочные бургеры', :price => 150, :size => 1, :is_spicy => true, :is_veg => false, :is_best_offer => false, :path_to_image => '/img/burger.jpg'
  end
end