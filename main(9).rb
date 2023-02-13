=begin
>> Object Oriented Programming

Ruby is a pure object-oriented language, which means everything in Ruby is an object. Even simple numbers, strings and Booleans are objects.

In programming, objects are independent units, and each has its own identity, just as objects in the real world do. An apple is an object; so is a mug. Each has its own unique identity. It's possible to have two mugs that look alike, but they are still separate, unique objects.

To create objects we use classes.
A class defines the data and actions associated with an object, but is separate from the object itself. In other words, a class can be thought of as an object's blueprint, description, or definition. For example, there can be many cat objects of the single class Cat.
Just like in the real world, where you can use a blueprint to construct multiple buildings, in programming you can use the same class as a blueprint for creating multiple objects.

>> Classes

You can think of classes as basic outlines of what an object should be made of and what it should be able to do. (For example, an object of class Car should have a color, make and model, and be able to move).
A class in Ruby always starts with the keyword class followed by the name of the class. The name should always be in initial capitals. You terminate the class definition with the keyword end.
=end
class Person #classe Pessoa vazia
end

#There is a special "initialize" method available for classes which gets called when an object is created. The purpose of the initialize method is to initialize the class variables for a new object. (For example, when a Car object is created, the initialize method could set the number of tires to the value 4) --> The initialize method is known as the "constructor" in other object-oriented programming languages.
class Person
  def initialize
    puts "Hi there"
  end
end

# After the class and the initialize methods are defined, we can create objects of that class by using the new method.  Below is an example that creates two objects p1 and p2 of the class Person:
class Person
    def initialize
        puts "Hi there"
    end
end

p1 = Person.new
p2 = Person.new
#output:
#Hi there
#Hi there

#Now, p1 and p2 are separate objects of the class Person. Objects are also called "instances" of a class. The process of creating objects of a class is called instantiation. Note that in computing objects aren't always representative of physical items. For example, a programming object can represent a date, a time, and a bank account.

=begin
>> Instance Variables

An instance variable is one type of variable defined in a class.
Each object of a class has a separate copy of the instance variables.
Instance variables are preceded by the at sign (@) followed by the variable name (for example: @name)
We can, for example, pass a parameter to the initialize method and assign it to an instance variable for a new object:
=end

class Person
  def initialize(name)
    @name = name
  end
end

#In the code above, @name is an instance variable for the class Person. Now, we can create objects of that class and pass an argument to the new method:
p1 = Person.new("David")
p2 = Person.new("Amy")

#A class can have multiple instance variables.
class Animal
  @age = 0
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ob = Animal.new("Jacky", 3)

