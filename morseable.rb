# Se tiene la clase Morseable que contiene un metodo de instancia
# generate_hash los datos de traduccion de numero entero a codigo morse.

class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    h = {}
    # Esto es una aberracion y debe ser refactorizado!
    h[0] = '-----' if number == 0
    h[1] = '.----' if number == 1
    h[2] = '..---' if number == 2
    h[3] = '...--' if number == 3
    h[4] = '....-' if number == 4
    h[5] = '.....' if number == 5
    h[6] = '-....' if number == 6
    h[7] = '--...' if number == 7
    h[8] = '---..' if number == 8
    h[9] = '----.' if number == 9
    return h[@number]
  end

  def to_morse
    self.generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
