# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados correspondientes.
class Rectangulo
  attr_reader :largo, :ancho
  # Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
  include Formula

  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  # Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
  def lados
    puts "Las medidas de los lados del Rectangulo son #{}"
  end
end

class Cuadrado
  attr_reader :largo
  # Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
  include Formula

  def initialize(lado)
    @lado = lado
  end

  # Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
  def lados
    puts "Las medidas de los lados del Cuadrado son #{}"
  end
end

# Crear un módulo llamado Formula.
module Formula

  # Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
  def Perimetro
    
  end

  # Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
  def Area

  end
end


# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.