    #Módulos (Modules)
#-- Another way of grouping methods together are modules.
#-- A module is a collection of methods that can be used in other classes (think about them as libraries providing common functionality).
#-- Modules are defined using the module keyword followed by the module name, which should start with a capital letter.
module Flyable
  def fly
    puts "I'm flying!"
  end
end
#The code above declares a module called Flyable, which includes one method called "fly".  A module can include as many methods as you want.

#Now, imagine having a class hierarchy, with a superclass Vehicle and subclasses: Car, Jet, Plane. All have some shared functionality, which they inherit from the Vehicle class, but only Jet and Plane can fly.
#Instead of defining separate fly methods for both classes, we can define a module and include it (commonly referred to as "mix" it) in the classes.
module Flyable
  def fly
    puts "I'm flying!"
  end
end

class Vehicle
end

class Car < Vehicle
end

class Jet < Vehicle
  include Flyable
end

class Plane < Vehicle
  include Flyable
end

ob = Jet.new
ob.fly
#A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling, like Walkable, Swimmable, Runnable, etc.

#However, a class can mix in multiple modules. Modules used this way are known as "mixins".
class Human
  include Walkable
  include Speakable
  include Runnable
end

=begin
It is important to remember the following:
1. You can only inherit from one class. But you can mix in as many modules as you'd like.

2. If it's an "is-a" relationship, choose class inheritance. If it's a "has-a" relationship, choose modules. Example: a plane "is a" vehicle; a plane "has an" ability to fly.

3. You cannot instantiate modules (i.e., an object cannot be created from a module).
Modules are used only for grouping common methods together.
Classes are about objects; modules are about methods.
=end


#Comparable mixin can be used to add the comparison operators (<, <=, ==, >=, and >) to a class.
#For this to work, Comparable assumes that any class that uses it defines the operator <=>.
#So, as a class writer, you define the one method, <=>, include Comparable, and get six comparison functions as a result!
#Let's try this with our Cat class, by making the cats comparable based on their age.
#All we have to do is include the Comparable module and implement the comparison operator <=>.
class Cat
    attr_accessor :name, :age
    include Comparable
    def initialize(n, a)
        self.name = n
        self.age = a
    end
    def <=>(other)
        self.age <=> other.age
    end
end

c1 = Cat.new("Bob", 3)
c2 = Cat.new("Lucy", 7)

puts c1 < c2 #true

#Namespacing --> namespacing means organizing similar classes in a module. In other words, we'll use modules to group related classes.
module Mammal
  class Dog
    def speak
      puts "Woof!"
    end
  end

  class Cat
    def speak
      puts "Meow"
    end
  end
end

a = Mammal::Dog.new
b = Mammal::Cat.new

a.speak #Woof
b.speak #Meow

#Another use for modules is as containers for methods.  This allows us to group together relevant methods and use them in our code.
module MyMath
    PI = 3.14
    def self.square(x)
        x*x
    end
    def self.negate(x)
        -x
    end
    def self.factorial(x)
         (1..x).inject(:*) || 1
    end
end

puts MyMath.factorial(8) #40320

#Structs ---> a shortcut to bundle a number of attributes together
Point = Struct.new(:x, :y)
#In the code above, Point is a Struct, having two attribute accessors: x and y. Struct automatically creates its initialize method for the defined accessors, so now we can use Points just like a class, instantiating different objects from it.
origin = Point.new(0,0)
dest = Point.new(15, 42)

puts dest.y #42

#Open Struct (OStruct) ---> acts very similarly to Struct, except that it doesn't have a defined list of attributes.  To use OStruct, we need to include the corresponding library using the "require" statement.
require "ostruct"

person = OpenStruct.new
person.name = "John"
person.age = 42
person.salary = 250

puts person.name #John

#OStruct isn't as fast as Struct, but it is more flexible.

#We can also initialize an OStruct using a hash.
require "ostruct"

person = OpenStruct.new(name:"John", age:42, salary:250)

puts person.name #John

#Operações Matemáticas
    #square root
    puts Math.sqrt(9)
    
    #pi constant
    puts Math::PI
    
    #trigonometry (sin, cos, tan)
    puts Math::cos(0)
    
#Time (Tempo) ---> The Time class represents dates and times in Ruby.
    #current time
    t = Time.now
    puts t.inspect
    
    #year, month, day
    puts t.year
    puts t.month
    puts t.day
    
    #custom date
    t = Time.new(1988, 6, 10)
    
    #day of week: 0 is Sunday
    puts t.wday
    
    #day of year
    puts t.yday

#Procs --> Ruby provides the ability to take a block of code, wrap it up in an object (called a proc), store it in a variable, and run the code in the block whenever you feel like (more than once, if you want).
greet = Proc.new do |x|
    puts "Welcome #{x}"
end

greet.call "David"
greet.call "Amy"

#Procs are very similar to methods. They perform operations and can include parameters.
greet = Proc.new do |x|
  puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
  puts "Goodbye #{x}"
end

def say(arr, proc)
  arr.each { |x| proc.call x}
end

  people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)
#Welcome David
#Welcome Amy
#Welcome John
#Goodbye David
#Goodbye Amy
#Goodbye John

#Let's create a program that counts the execution time of a block of code.
def calc(proc)
    start = Time.now
    proc.call
    dur = Time.now - start
end

someProc = Proc.new do
    num = 0
    1000000.times do
      num = num + 1
    end
end

puts calc(someProc) #0.034204102

#Lambdas ("anonymous function") --> Lambdas are a variation of Procs. A lambda is actually an instance of the Proc class.
talk = lambda {puts "Hi"}
  #ou
talk = ->() {puts "Hi"}

  talk.call

  #Lambdas as very similar to procs. However, there are some important differences.
#The first difference between procs and lambdas is how arguments are handled. Lambdas check the number of arguments, while procs do not.
  talk = lambda { |x| puts "Hello #{x}" }
talk_proc = Proc.new { |x| puts "Hello #{x}" }

talk.call "David"
talk_proc.call "Amy"

#As you can see, the lambda and proc worked the same way, when the number of arguments is correct.  However, if we try to call them with incorrect number of arguments:
talk_proc.call #Hello 
talk.call #./Playground/file0.rb:1:in `block in <main>': wrong number of arguments (given 0, expected 1) (ArgumentError)

    
