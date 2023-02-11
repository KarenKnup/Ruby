#Métodos (Funções) --> A method is a set of statements that perform a specific task. The def keyword is used to define a method.

def say
  puts "Hi"
end

say
say 
say

#The method name should start with a lowercase letter, so it will not be confused with constants.


#Parâmetros --> A method declaration can include parameters, which you define inside parentheses after the method name.

def sqrt (x)
  puts x*x
end

sqrt(8)

#The actual parameter value is called an argument. So, in the above example, x is the parameter of the method, while 8 is the argument.

#Parâmetros Múltiplos
def sum(a,b)
	puts a+b
end

sum(7,4)

#Parâmetros Padrões (Default Parameters) --> You can also set default values for the parameters, so that the method will still work even if you do not provide all the arguments.
def sum(a, b=8)
  puts a+b
end

x=5
sum(x)

#ou
def sum x,y
	puts x+y
end

sum 6,9

#gets.chomp is used to take user input and strip the newline at the end of the input.
def greet(name="")
    if name==""
        puts "Greetings!"
    else
        puts "Welcome, #{name}"
    end
end

greet(gets.chomp)

#Exemplo:
def demo x=4, y=2
  puts x**y
end
demo 5 #25

#Parâmetros Opcionais --> You can also define methods that take any number of arguments
def someMethod(*p)
    puts p
end

#In the code above p is an array. When you pass arguments to the method, they become elements of p.


someMethod(25, "hello", true)