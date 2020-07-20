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
# ordersLine = "product_1=2,product_2=2,product_3=3"

# def parseOrders ordersLine

#     s1 = ordersLine.split(/,/)

#     arr = []

#     puts s1.inspect

#     s1.each do |i|
#         s2 = i.split(/=/)
#         s3 = s2[0].split(/_/)

#         id = s3[1]
#         cnt = s2[1]
#         arr2 = [id, cnt]
#         arr.push arr2
#     end
#     return arr
# end

# puts parseOrders(ordersLine).inspect