#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
require 'matrix'

# Matrix1 = array.new
# Matrix2 = array.new

a = [[1, 2],[3, 4]]
b = [[2, 3],[4, 5]]

c = Array.new # Matriz resultante de la suma
d = Array.new # Matriz resultante de la multiplicacion

m = a.size # Numero de filas
n = a[1].size # Numero de columnas

# Inicializar la matriz c a 0.

for i in 0...m do
  c[i] = Array.new  
  d[i] = Array.new
  for j in 0...n do
     c[i][j] = 0
     d[i][j] = 0
  end
end


# Suma de a + b

for i in 0...m do
  for j in 0...n do
     c[i][j] = a[i][j] + b[i][j]
  end
end

#Multiplicacion

for i in 0...m do
  for j in 0...n do
     for k in 0...m do
     d[i][j] += a[i][k] * b[k][j]
     end
  end
end

# Mostrar resultados
# Suma

puts "La suma es: "
for i in 0...m do
  for j in 0...n do
     puts c[i][j]
  end
end

# Multiplicacion
puts "La multiplicacion es: "
for i in 0...m do
  for j in 0...n do
        puts d[i][j]
  end
end




