#Cálculos
x=5
y=2 #ou --> x,y = 5,2

puts x+y
puts x-y
puts x*y
puts x/y
puts x%y #resto
puts x**y #potência

z = (3+2) * 4  
puts z 

#Formas encurtadas de operadores
x += y # x=x+y  
x -= y # x=x-y  
x *= y # x=x*y  
x /= y 
#x=x/y  
x %= y # x=x%y  
x **= y # x=x**y 

#Inversão de variáveis
a,b = b,a

#Strings
text = 'Ruby\'s syntax is fun'  #Only the \' and \\ escape sequences can be used with single quote strings. 
puts text  

text = "Hello \n World"  
puts text  

#Intercalação em String
a = 5  
b = 2  
puts "The sum is #{a+b}"  

#Concatenação
a = "Hi "  
b = 'there'  
puts a+b

#Repetição de String
a = "abc"  
puts a*3  
# outputs "abcabcabc"  
 
puts '5'*4  
# outputs 5555 