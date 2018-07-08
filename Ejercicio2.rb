# Crear un módulo llamado Formula.
module Formula

  # Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
  def perimetro
    case self
    
    when Rectangulo
      perimetro = 2 * (@largo + @ancho)
      "El rectangulo tiene un perimetro de #{perimetro}"
    when Cuadrado
      perimetro = @lado * 4
      "El cuadrado tiene un perimetro de #{perimetro}"
    end
  end

  # Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
  def area
    case self

    when Cuadrado
      area = @lado * @lado
      "El area del cuadrado es #{area}"
    when Rectangulo
      area = @largo * @ancho
    "El area del cuadrado es #{area}"
    end
  end

end

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
    puts "El largo del rectangulo es #{@largo} y su ancho es #{@ancho}"
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
    puts "Los medidas de los lados del cuadrado son #{@lado}"
  end
end

# Instanciar un:

# Rectangulo
rec = Rectangulo.new(20, 12)
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.
puts rec.area
puts rec.perimetro
puts rec.lados

#Cuadrado
cua = Cuadrado.new(6)
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.
puts cua.area
puts cua.perimetro
puts cua.lados