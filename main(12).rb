#Herança --> Inheritance is when a class receives, or inherits, attributes and behavior from another class. The class that is inheriting behavior is called the subclass (or derived class) and the class it inherits from is called the superclass (or base class).

#The < symbol is used to inherit a class from another class.

class Dog < Animal
  #some code
end
#---------------------------------------------------
class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end
  def speak
    puts "Hi"
  end
end

class Dog < Animal
end

d=Dog.new("Bob","Brown")
d.speak #outputs "Hi"
#-----------------------------------------------------
class Animal
    def initialize(name, color)
        @name = name
        @color = color
    end
    def speak
        puts "Hi"
    end
end

class Dog < Animal
end

class Cat < Animal
    attr_accessor :age
    def speak
        puts "Meow"
    end
end

c = Cat.new("Lucy", "white") #outputs "Meow"
#----------------------------------------------------

#Inheritance is a great way to remove duplication in your code by writing the shared and common functionality in the superclass and then adding individual functionality in the subclasses.
class Animal
end
class Mammal < Animal
end
class Dog < Mammal
end

#Método "super" --> Ruby has a built-in method called super, which is used to call methods from the superclass.
class Animal
  def speak
    puts "Hi"
  end
end

class Cat < Animal
  def speak
    super
    puts "Meow"
  end
end

c=Cat.new
c.speak #outputs "Meow"

#super is more commonly used in the initialize method.
class Animal
  def initialize(name)
    @name = name
  end
end

class Cat  < Animal
  def initialize(name, age)
    super(name)
    @age = age
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end

c=Cat.new("Bob",3)
puts c #outputs "Bob is 3 years old"
#--------------------------------------------------

#What is the output of this code? = 4
class A
  def initialize(x)
    puts x/2
  end
end
class B < A
  def initialize(y)
    super(y+2)
  end
end
ob = B.new(6)
#-----------------------------------------------

#Operador Overloading --> Ruby allows us to overload operators so that we can perform operations such as adding two objects together.
class Shape
    attr_accessor :h, :w
    def initialize(h, w)
        self.h = h
        self.w = w
    end
    def +(other)
        Shape.new(self.h+other.h, self.w+other.w)
    end
end

a = Shape.new(7, 4)
b = Shape.new(9, 18)
c = a+b
puts c.h #16
puts c.w #22

#Fill in the blanks to overload the multiplication operation for the Box class.
class Box 
  attr_accessor :w, :h
  def_initialize(w,h)
    self.w=w
    self.h=h
  end
  def *(ob)
    Box.new(self.w*ob.w, self.h*ob.h)
  end
end
#---------------------------------------

#Modificadores de Acesso ---> Until now, all the methods that we defined in our classes were publicly available, meaning that you could call those methods from outside of the class. To control visibility, Ruby provides the public, private, and protected access modifiers.

#PRIVATE access modifier
class Person
    def initialize(age)
        @age = age
    end
    def show #We called it from the show method, which is public.
        puts "#{@age} years = #{days_lived} days"
    end

    private
    def days_lived #the method days_lived is private and is only accessible inside the class.
        @age * 365
    end
end

p = Person.new(42)
p.show #If we try to call the days_lived method from an object (puts p.days_lived), we will get an error.


#PROTECTED access modifier
class Product
    attr_accessor :name, :num
    def initialize(name, num)
        @name = name
        @num = num
    end
    def ==(other)
        self.id == other.id
    end
    private
    def id
        name.length*num
    end
end

p1 = Product.new("PC", 5)
p2 = Product.new("Laptop", 3)
puts (p1 == p2) #./Playground/file0.rb:8:in `==': private method `id' called for #<Product:0x000056176aac02d8 @name="Laptop", @num=3> (NoMethodError)

#This code generates an error, because we tried to call the private method id on self and the other object.  To be able to do that without making the method public, Ruby has the protected access control.
class Product
    attr_accessor :name, :num
    def initialize(name, num)
        @name = name
        @num = num
    end
    def ==(other)
        self.id == other.id
    end
    protected
    def id
        name.length*num
    end
end

p1 = Product.new("PC", 5)
p2 = Product.new("Laptop", 3)
puts (p1 == p2) #false

#So, protected methods are not accessible from outside code, just like private methods, but can be called for an object of the same class or subclasses.
#----------------------------------------------

#Um Jogo Simples
class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end
#The Player class has 3 instance variables, name, health and power, and 3 instance methods: 
 #isAlive shows whether the player is still alive.
 #hit hits the opponent (decreases the opponent's health by the amount of player's power)
 #to_s outputs the player information.

#We have also defined getter and setter accessors for the instance variables using the attr_accessor method.


#With the Player class defined, we can now define a method to make two opponents fight:
def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)
    show_info(p1, p2)
  end
    
  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

#The fight method uses a loop to make the players hit each other until the isAlive method returns false for one of them. After each iteration, the information of both players is output to the screen using the show_info method we defined.

#Once the loop is over (meaning one of the opponents has lost), we check and output the corresponding result.

#Método rand --> returns a random value in the range of 0 to its argument.
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))#entre 1 e 100/entre 1 e 20
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)