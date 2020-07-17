hh = {}
loop do
  
  puts "Введите id продукта: "
  id = gets.chomp

  puts "Введите количество: "
  n = gets.chomp.to_i

  x = hh[id].to_i
  x = x + n
  hh[id] = x

  puts hh.inspect
end