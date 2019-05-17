#enumerable.rb
require_relative 'enumerable'
require 'colorize'

include Enumerable
i = 1
j = 1
my_array = [1,2,3,4,5]
my_methods = ["1.- my_each" , "2.- my_each_with_i ", "3.- my_any? ","4.- my_all? " , "5.- my_none?", "6.- my_map",]
true_cases = 0
success = 0
system("clear")
puts "TEST #1\n\nmy_each method..."

my_array.my_each{|value| 
    true_cases += 1 if value == i
    i +=1
 }

if true_cases == 5
    my_methods[0] += "\t√"
    success += 1
else
    my_methods[0] += "\tX"
end
true_cases = 0
puts "\n\nTEST #2\nmy_each_with_i method..."

my_array.my_each_with_i{|value,i|
    true_cases += 1 if value == j && i == true_cases
    j += 1
}

if true_cases == 5
    my_methods[1] += "\t√"
    success += 1
else
    my_methods[1] += "\tX"
end
true_cases = 0

puts"\n\nTEST #3\nmy_any? method... "
any = false
any = my_array.my_any?{|value|
    value == 2
}

if any
    my_methods[2] += "\t√"
    success += 1
else
    my_methods[2] += "\tX"
end

puts"\n\nTEST #4\nmy_all? method..."
all = false

all = my_array.my_all?{|value|
    value >= 1
}

if all
    my_methods[3] += "\t√"
    success += 1
else
    my_methods[3] += "\tX"
end




for i in 0 .. 5
    puts my_methods[i]
end