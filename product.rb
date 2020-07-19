# аналогию на script из common.js

# hh = {}
# loop do
  
#     puts "Введите id продукта: "
#     id = gets.chomp

#     puts "Введите количество: "
#     n = gets.chomp.to_i

#     x = hh[id].to_i
#     x = x + n
#     hh[id] = x

#     puts hh.inspect

#     sum = 0
#     hh.each do |key, value|
#         sum = sum + value
#     end

#     puts "Количество введенных товаров: #{sum}"
# end

# 
orders = "product_1=2,product_2=2,product_3=3"

s1 = orders.split(/,/)

puts s1.inspect

s1.each do |i|
    s2 = i.split(/=/)
    s3 = s2[0].split(/_/)

    key = s3[1]
    value = s2[1]

    puts "Продукт id: #{key}, элемент: #{value}"
end