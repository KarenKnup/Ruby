#Operadores Lógicos
a = 42  
b = 8  
if a > 7 && b < 11  
  puts "Yes"  #output
end  

a = 3  
b = 5  
if a ==3 || b > 10  
  puts "Welcome"  #output
end  

a = 7  
puts !(a>5)  
# outputs false --> not (!) operator reverses the state of a single operand. The result of not true is false, and not false is true. 
 
a = 5
if !(a > 2)
  print("2")
elsif !(1 + 2 == a)
  print("3") #output
else
  print("4")
end

#Case Statements
a = 2  
case a  
  when 1  
    puts "One"  
  when 2  
    puts "Two"  #output
  when 3  
    puts "Three"  
end 


age = 5  
case age  
  when 1, 2, 3  
    puts "Little baby"  
  when 4, 5  
    puts "Child"  
end  

age = 18  
 
case age  
when 1, 2, 3  
puts "Little baby"  
when 4, 5  
puts "Child"  
else 
 puts "Not a baby"  
end  
 
age = 18  
case age  
  when 1, 2, 3  
    puts "Little baby"  
  when 4, 5  
    puts "Child"  
  else # An else statement can be provided to execute code if no when condition matches
    puts "Not a baby" #output 
end  

#Repetições - Loops
x = 0  
while x < 10  
  puts x  
  x += 1  
end 

#The until loop is the opposite of a while loop: it will run while its condition is false.
a = 0  
until a > 10  
  puts "a = #{a}"  
  a +=2  
end 

#Range - Faixa
a = (1..7).to_a  
puts a # [1, 2, 3, 4, 5, 6, 7]  
 
b = (79...82).to_a  
puts b # [79, 80, 81]  
 
c = ("a".."d").to_a  
puts c # [a, b, c, d] 

age = 42  
case age  
  when 0..14  
    puts "Child"  
  when 15..24  
    puts "Youth"  
  when 25..64  
    puts "Adult"  
  else  
    puts "Senior"  
end 


#Loop "FOR"
for i in (1..10)  
  puts i  
end 

for i in 1..5  
  break if i > 3  
  puts i  
end  

for i in 0..10  
  next if i %2 == 0  
  puts i  
end 

#Ruby also has the redo statement, which causes the current loop iteration to repeat. 

#The retry statement causes the whole loop to start again from the beginning. 

#Loop "DO" --> funciona até alcançar o break, sem break o loop fica infinito
x = 0  
loop do 
  puts x  
  x += 1  
  break if x > 10  
end 