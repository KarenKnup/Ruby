=begin
>> Class Methods

Class methods are methods we can call directly on the class itself, without having to instantiate any objects.
Class methods are defined using the self keyword:
=end
class Person
  def self.info
    puts "A Person"
  end
end

Person.info #outputs "A Person"

#Remember, when used inside of instance methods, self is representing the current instance (object) of that class.  When defining class methods, self is referring to the class itself, and not to an instance of the class.
class Calc
  def self.sqr x
    x*x
  end
end

puts Calc.sqr 8

=begin
>> Class Variables

Class variables are accessible to every object of a class. A class variable belongs to the class, not the objects.
You declare a class variable using two @ signs, for example @@name.
=end
lass Person
    @@count = 0
    def initialize
        @@count += 1
    end
    def self.get_count
        @@count
    end
end

p1 = Person.new
p2 = Person.new

puts Person.get_count #outputs "2"

#In the code above, @@count is a class variable. Since the initialize method is called for every object that is created, incrementing the @@count variable will keep track of the number of objects created.
#We also defined a class method called get_count to return the value of the class variable.
#In the code above, we have created two objects of the Person class so the value of the @@count variable is 2.

#Class variables are usually used when you need information about the class, not the individual objects.

# >> Class Constants ---> A class can also contain constants. 
class Calc
  PI = 3.14
end

puts Calc::PI #outputs "3.14"

#The "to_s" Method ---> The to_s method comes built-in with all classes. It gets called when you output the object.
class Person
    #some code
end
p = Person.new
puts p #outputs "#<Person:0x00005595cfa590c8>"

#When we call puts p, Ruby automatically calls the to_s method for the object p, so puts p is the same as puts p.to_s.  By default, the to_s method prints the object's class and an encoding of the object id.

#We can define our own to_s method for a class and add custom implementation to it.
class Person
    def initialize(n, a)
      @name = n
      @age = a
    end
    def to_s
        "#{@name} is #{@age} years old."
    end
end
p = Person.new("David", 28)
puts p #outputs "David is 28 years old."

#The to_s method also gets called when the object is used as a value in a string, like "#{p}"

#Defining the to_s method makes it easier and shorter to output the information of an object in the format needed, as opposed to defining a custom method and calling it from an object.

#When you define the to_s method you call puts on your object (puts obj), where with a custom method you have to explicitly call it from the object (puts obj.info).

#include the object "x" in the output
class X
end

x=X.new
puts "Object data: #{x}"
