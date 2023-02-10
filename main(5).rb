#Manipulação de Vetores (soma, subtração, multiplicação)
a = [1,2,3]
b = [4,5]
res = a + b
print res #[1,2,3,4,5]

a = [1,2,3,4,5]
b = [2,4,5,6]
res = a - b
print res #[1,3]

a = [1,2,3]
res = a*3
print res #[1,2,3,1,2,3,1,2,3]

#Operações Booleanas - operador "&" -- returns a new array containing the elements common to the two arrays, with no duplicates.
a = [2,3,7,8]
b = [2,7,9]
print a & b #[2,7] - o que os 2 têm em comum

#Operações Booleanas - operador "|" -- returns a new array by joining the arrays and removing duplicates.
a = [2,3,7,8]
b = [2,7,9]
print a | b #[2,3,7,8,9 - união dos dois

#Mover um elemento - método "reverse" -- inverte a ordem dos elementos do vetor
  #método "reverse!" -- o vetor não é alterado
arr = [5,3,8]
res = arr.reverse ou #print arr.reverse!
print res #[8,3,5]

    #Métodos de Vetores
=begin
1 - array.length or array.size returns the number of elements in array.
2 - array.sort returns a new array with the elements sorted
3 - array.uniq returns a new array with duplicate values removed from array.
4 - array.uniq! removes duplicates in place.
5 - array.freeze safeguards the array, preventing it from being modified.
6 - array.include?(obj) returns true if obj is present in array, false otherwise.
7 - array.min returns the element with the minimum value.
8 - array.max returns the element with the maximum value.
=end
  arr = ["a","b","c"]
for x in arr
	puts "Value: #{x}"
end
