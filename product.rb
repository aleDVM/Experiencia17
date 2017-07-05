# Se tiene un archivo llamado catalogo.txt que contiene los nombres
# de los productos que ofrece una tienda junto con los precios de las
# tallas L, M, S y XS.
#El siguiente codigo define la clase Product y ademas realiza la lectura
# del archivo.
# Optimizar el codigo implementando el operador splat al momento de
# instanciar los productos

#Generar un método que permita calcular el promedio de precio por producto.

class Product
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
  print product.average
  puts
end

puts products_list

# La tienda desea generar un nuevo catalogo que no incluya el ultimo precio
# correspondiente a cada producto debido a que ya no comercializa productos de talla XS.
