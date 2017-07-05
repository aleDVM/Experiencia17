# Se tiene un archivo llamado catalogo.txt que contiene los nombres
# de los productos que ofrece una tienda junto con los precios de las
# tallas L, M, S y XS.
#El siguiente codigo define la clase Product y ademas realiza la lectura
# del archivo.
# Optimizar el codigo implementando el operador splat al momento de
# instanciar los productos

#Generar un método que permita calcular el promedio de precio por producto.

class Product
  attr_reader :name
  def initialize(name, *prices)
    @name = name
    @prices = prices.map(&:to_i)
  end

  def average
    sum = @prices.inject{ |acc, x| acc + x }
    prom = sum / @prices.size
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
products_list.each do |product|
  print "El promedio del precio del producto #{product.name} es #{product.average}"
  puts
end

puts products_list

# La tienda desea generar un nuevo catalogo que no incluya el ultimo precio
# correspondiente a cada producto debido a que ya no comercializa productos de talla XS.

file = File.open('nuevo_catalogo.txt', 'w')
new_products = []
data.each do |product|
  ls = product.split(', ')
   ls.delete(ls[-1])
   file.print "#{ls}"
   file.puts

end
file.close
