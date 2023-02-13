=begin
>> Instance Methods

In the real world, objects behave in their own way. A car moves, a phone rings, and so on.
The same applies to programming objects. Behavior is specific to the object's type and is defined by methods in the class.
You can declare instance methods that are available to an object of the class.
=end
class Dog
  def bark
    puts "Woof!"
  end
end

d = Dog.new
d.bark #outputs "Woof!"

#As with any method, instance methods can include multiple parameters and return values.

class Box
  def initialize(w, h)
    @width = w
    @height = h
  end
  def area
    @width * @height
  end
end

=begin
>> Accessors

An instance method can also be created to access the instance variables from outside of the object.
=end

#Exemplo - acessar @name
class Person
    def initialize(name)
        @name = name
    end
    def get_name
        @name
    end
end

p = Person.new("David")
puts p.get_name #outputs "David"

#"Getter" and "setter" methods are called accessors. The method that is used to retrieve the value of the variable is called a "getter" method (get_name in our example). The method that is used to modify the value of the variable is called a "setter" method.

#Setter Method  --> the method name is followed by an equal sign (=).
class Person
    def initialize(name)
        @name = name
    end
    def get_name
        @name
    end
    def set_name=(name) # set_name is a setter method that sets the value of the @name instance variable to the value of its parameter name.
        @name = name
    end
end

p = Person.new("David")
p.set_name = "Bob"
puts p.get_name #outputs "Bob"

#In Ruby it is a common practice to name the "getter" and "setter" methods using the same name as the instance variable they are accessing.
class Person
    def initialize(name)
        @name = name
    end
    def name
        @name
    end
    def name=(name)
        @name = name
    end
end

p = Person.new("David")
p.name = "Bob"
puts p.name #outputs "Bob"

#Ruby has a built-in way to automatically create these getter and setter methods using the attr_accessor method.  The "attr_accessor" method takes a symbol of the instance variable name as an argument, which it uses to create getter and setter methods.
class Person
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

p = Person.new("David")
p.name = "Bob"
puts p.name #outputs "Bob"

#Ruby also provides the attr_reader and attr_writer methods in case only a getter or setter method is needed for the instance variable.

#We can pass multiple symbols to the attr_accessor, attr_reader and attr_writer methods. For example: attr_accessor :name, :height, :weight

#Drag and drop from the options below to automatically generate the getter accessor for the @age variable:
class Dog
  attr_reader :age
end

#The accessor methods can also be called inside the class by using the "self" keyword.
class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
    def change(n, a)
        self.name = n
        self.age = a
    end
    def show_info
        puts "#{self.name} is #{self.age}"
    end
end

p = Person.new("David", 28)
p.change("Bob", 42)
p.show_info #outputs "Bob is 42"

#self represents the current object and is used to call the instance methods and accessors of the object.   One of the benefits of using self is for disambiguation. For example, if you have a variable and a method both called name, self.name would make it clear that you are referring to the method.