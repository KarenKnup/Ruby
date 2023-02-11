#Retorno de Métodos --> The return keyword is used to return a value from a method.
def sum(a,b)
	res = a+b
	return res
end

x = sum(5,23)
puts x

#Retorno de múltiplos (vários) valores ---> You can return multiple values from a method by separating them with commas in the return statement.
def squares (a,b,c)
	return a*a, b*b, c*c #o retorno é um vetor
end

arr = squares(2, 3, 6)
puts arr

#Ruby always returns the evaluated result of the last line of the method that is executed.
def demo(a, b)
    a = b-2
    b = a-3
end

puts demo(5, 6) #1

#Encadeando Métodos (Chaining Methods) --->> Because all methods return a value, we can chain multiple methods together, as well as chain methods with iterators.
def square(x)
    x*x
end

square(4).times {puts "Hi"}

#If anywhere along the chain there is a nil or an error, the entire chained call will break down.
def calc(a, b)
  return a*a, b*b, a*b
end
puts calc(3, 2).length #3

#Métodos como argumentos
def add(a, b)
    a+b
end

def mult(a, b)
    a*b
end

x = mult(add(2, 3), add(4, 7))
puts x

#Variável de Escopo (Variable Scope) --> Scope defines where in a program a variable is accessible. Ruby has four types of variable scope: local, global, instance and class. Scope makes the program more predictable and secure.


#1 - Variáveis Locais --> are local to the code construct in which they are declared. 

def calc(x)
  y = 2
  puts x*y #In the above code x and y are both local variables. They are accessible only inside the calc method.
end

#If we try to access them outside of the method we will get an error:
puts y

#The same applies to loops and iterators:
arr = [1, 2, 3]
arr.each {|x| puts x} #x is a local variable available only in the iterator block.

def change
  x = 5
end
x = 8
change
puts x #8

#2 - Variável Global --> Global variables in Ruby are accessible from anywhere in the Ruby program, regardless of where they are declared. Global variable names are prefixed with a dollar sign ($).
$x = 42

def change
    $x = 8
end

change
puts $x

#Use of global variables is strongly discouraged. The problem with global variables is that, not only are they visible anywhere in the code, but they can also be changed from anywhere in the application. This can result in hard to find bugs.
$x = 2
def change(x)
  $x = x
end
change(8)
puts $x #8

#Recursão --> Another way of creating loops is recursion. It involves the concept of methods calling themselves.

=begin
  For example, 5! (5 factorial) is 5 * 4 * 3 * 2 * 1 (120). To implement this recursively, notice that 5! = 5 * 4!, 4! = 4 * 3!, 3! = 3 * 2!, and so on. Generally, n! = n * (n-1)!.
  Furthermore, 1! = 1. This is known as the base case, as it can be calculated without performing any more factorials.
=end
def fact(n)
    if n<= 1
        1
    else
        n * fact( n - 1 )
    end
end

puts fact(5)

#The if n<=1 block acts as the base case. The base case is the exit condition of the recursion. Ruby is fast! Try to run the above code for a larger number and see the output.

def fib(num)
  if num < 2
    num
  else
    fib(num-1) + fib(num-2)
  end
end
puts fib(4) #3

#Recursive methods can become infinite, just like infinite loops. These often occur when you forget to implement the base case.
def fact(n)
    n * fact( n - 1 )
end

puts fact(5)


#3- Variável de Instância

#4 - Variável de Classe