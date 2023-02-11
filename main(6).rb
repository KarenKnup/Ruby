=begin
  Hashes (sometimes known as associative arrays, maps, or dictionaries) are similar to arrays in that they are an indexed collection of elements.
However, while you index arrays with integers, you can index a hash with anything.

That is very useful when you want to map values, for example: "name" => "David". Here, "name" is the index (also called the key) which is mapped to the value "David". 

So, hashes represent "key=>value" pairs.

A hash is created with comma separated keys and values inside curly brackets
=end

ages = { "David" => 28, "Amy"=> 19, "Rob" => 42 }
puts ages["Amy"] #19

#Symbols are similar to strings, but they are immutable, meaning that they cannot be changed. A symbol is created using a colon and a name, for example:
a = :id

#So why use symbols instead of strings? Using symbols not only saves time when doing comparisons, but also saves memory, because they are only stored once.
h = {:name=>"Dave", :age=>28, :gender=>"male"}
puts h[:age] #28

#Métodos para manipular HASHES 
=begin
1 - hash.delete(key) removes the key-value pair from hash by key.
2 - hash.key(value) returns the key for the given value in hash, nil if no matching value is found.
3 - hash.invert creates a new hash, reversing keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
4 - hash.keys returns a new array with keys from hash.
5 - hash.values returns a new array containing all the values of hash.
6 - hash.length returns the length of hash as an integer.
=end
car = {brand:"BMW", year:2016, color: "red", length:205}
car.delete(:length)
puts car.values #BMW \n 2016 \n red

h = {a:"b", b:"a"}
h = h.invert
res = h.keys
puts res[0] #b

#Nested Arrays - Matriz --> Arrays can contain other arrays. These are called nested arrays.
arr = [ [1,2,3], [4,5,6] ]
puts arr[1][2] #6

arr = [5, [9, 4, 6], [8]]
puts arr[1][0] #9

cars = {
    bmw: { year:2016, color:"red"},
    mercedes: { year:2012, color:"black"},
    porsche: { year:2014, color:"white"}
}
puts cars[:bmw][:color] #red

test = {
  a:"A",
  b:{c:"C", d:"D"}
}
puts test.length #2

#Iteradores --> more elegant looping methods 
  #1 - método "each" - cada elemento
arr = [2,4,6]
arr.each do |x|
	puts x
end #2 4 6

sum = 0
arr.each do |x| #"do" e "end" especificam um bloco de código
  sum += x
end
puts sum #12

sizes = {svga:800 , hd:1366, uhd:3840}
sizes.each do |key, value|
	puts "#{key}=>#{value}"
end

  #2 - método "each_char" - strings

  #3 - método "times" --> executes a loop the specified number of times
10.times do
	puts "hi"
end


#Frequência de Letras - número de ocorrências de uma letra numa string
text = "I am learning Ruby and it is fun!"

text.downcase! #The downcase! method is used to convert all letters in the string to lowercase.

freqs = {}
freqs.default = 0 #The default method is used to set the default value for the hash, meaning that any key that does not have a value assigned will be set to that value.

text.each_char { |char| freqs[char] += 1} # "each_char" calculate the number of occurrences in the hash

#To show a nice result output in an alphabetical order, we can create a range of all letters and print their corresponding frequencies:
("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }

#Final code:
text = "I am learning Ruby and it is fun!"
text.downcase!
freqs = {}
freqs.default = 0

text.each_char { |char| freqs[char] += 1}

("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }

#Exercício:
s = "some text goes here"
c = 0
s.each_char do |x| 
  c += 1 if x == "e"
end
puts c #5
