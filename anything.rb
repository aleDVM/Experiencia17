# Copia el siguiente codigo y ejecutalo. Luego corrige los errores para
# poder imprimir ejecutar ambos metodos y finalmente obtener el valor
# de la variable de a.

class Anything
  attr_reader :a
  def foo
    @a = 5
  end

  def bar
    @a += 1
  end
end

any = Anything.new
any.foo
any.bar
any.a
