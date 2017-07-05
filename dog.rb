# Crea una clase llamada Dog cuyo constructor reciba como
# argumento un hash con la siguiente estructura:

# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Cafe'}
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash.
# Luego generar un metodo llamado ladrar que, mediante interpolacion,
# imprima "Beethoven esta ladrando!"

class Dog
  attr_reader :propiedades
  def initialize(propiedades)
    @propiedades = propiedades
  end

  def ladrar
     print "#{@propiedades[:nombre]} esta ladrando"
   end
end
propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Cafe' }

dog1 = Dog.new(propiedades)
dog1.ladrar
