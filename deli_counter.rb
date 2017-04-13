katz_deli = []

def line(array)
  line_order = []
  if array.size > 0
    array.each do |person|
      line_position = array.index(person) + 1
      line_order.push("#{line_position}. #{person}")
    end
    puts "The line is currently: #{line_order.join(" ")}"
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  line_position = katz_deli.size
  puts "Welcome, #{name}. You are number #{line_position} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
