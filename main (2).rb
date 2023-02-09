#Input
x = gets 
puts x

#gets gets a line of text, including the new line at the end. If you do not want to include the new line, use the gets.chomp method: 

puts "Enter your name"  
name = gets.chomp 
puts "Welcome, #{name}" 

#The value of the input is a string. To convert it to an integer, you can use the gets.to_i method. 

#Valores Booleanos

=begin
If you try to evaluate a value other than true or false as a Boolean, Ruby will automatically treat it as a Boolean. 
When this is done, a non-Boolean value that evaluates to true is called "truthy" and a non-Boolean value that evaluates to false is called "falsey". 
 
In Ruby only false and nil are falsey. Everything else is truthy (even 0 is truthy). 

Only true and false are Booleans. nil is not a Boolean. 0 is not a Boolean. The string "Hello" is not a Boolean. However, in a context where a Boolean is expected, Ruby evaluates them as Boolean (truthy and falsey). 
=end

a = 5  
b = 8  
 
puts a == b # false 
puts a == 5 # true 
puts a != b # true 
puts 12 > 8 # true  
puts 5 < 2 # false  
puts 5 >= 5.0 # true  
puts 3 <= 6 # true 

#There is also the .eql? method, which results in true only if both arguments have the same type and equal values. 
puts 3 == 3.0 # true  
# but  
puts 3.eql?(3.0) # false 

#Condicionais - If 
a = 42  
if a > 7  
puts "Yes"  
end 

num = 16  
if num > 7  
  puts "Greater than 7"  
  if num < 42  
    puts "Between 7 and 42"  
  end 
end 

num = 8
if num > 4
  puts "4"
  if num < 7
    puts "7"
    if num == 8
      puts "8"
    end
  end
end

#Else
age = 15  
if age > 18  
  puts "Welcome"  
else  
  puts "Too young"  
end  

#Else if
num = 8  
if num == 3  
  puts "Number is 3"  
elsif num == 10  
  puts "Number is 10"  
elsif num == 7  
  puts "Number is 7"  
else  
  puts "Not found"  
end 

#Unless --> The unless expression is the opposite of an if expression. It executes code when a conditional is false.
a = 42  
unless a < 10  
  puts "Yes"  #output
else  
  puts "No"  
end  

a = 42  
puts "Yes" if a > 10  
puts "Yes" unless a < 10 

x = 5
unless x < 8
  x += 3
else 
  x += 2
end
puts x #7

