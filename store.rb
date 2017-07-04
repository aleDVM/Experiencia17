# Copia el siguiente codigo y ejecutalo.
# Luego corrige los errores para poder imprimir el nombre de la tienda.

class Store
  attr_reader :name
  def initialize(name)
  	@name = name
  end
end
store = Store.new('Tienda 1')
puts store.name
