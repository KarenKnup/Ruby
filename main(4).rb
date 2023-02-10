#Array (Vetor) - lista numerada de itens - SEMPRE começa com 0
items = ["Apple", "Orange", "Banana"]
puts items[0] #Apple

#A negative index is assumed relative to the end of the array. For example, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
arr = [5, "Dave", 15.88, false]
puts arr[1] #Dave
puts arr[-1] #false

#Adicionar novos elementos - operador "<<"
arr << 8 #adiciona o 8 no final do vetor
puts arr[-1]
puts arr[-2]

#Método "push" - adiciona um número no final do vetor
arr.push(8)

#Método "insert" - permite inserir um elemento em uma posição desejada
arr.insert(2, 8) #insere o 8 na posição 2

#Remover elementos - método "pop" - remove o último elemento do vetor
arr = [1,2,3]
arr.pop
print arr #puts - imprime 1 elemento / print - imprime todos os elementos

#Remover elementos - método "delete_at" - remove o elemento de uma posição específica
arr = [2,4,6,8]
arr.delete_at(2)
print arr

#Range (Faixa) - ".." e "..."
nums = [6,3,8,7,9]
print nums[1..3] #[3,8,7]

