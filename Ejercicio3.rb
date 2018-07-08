# Se tiene el archivo config.ru :

# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']
    if @URL == '/INDEX'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index! </h1>']]
    elsif @URL == '/INDEX2'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Landing! </h1>']]
    else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
end
run MiPrimeraWebApp.new

# Crear un archivo llamado 404.html cuyo body contenga una etiqueta de título con el texto "No se ha encontrado la página :(".

# Modificar el archivo config.ru para adaptarlo a los siguientes requerimientos:
