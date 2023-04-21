opciones = [1, 2, 3] # Defino un arreglo de opciones válidas (quizás me adelanté pero sino escribía demasiado extra)

puts "---------- Menú ----------"
puts "¿Piedra, papel o tijera?"
puts "Ingresa el número como la opción que deseas"
puts "Piedra = 1"
puts "Papel = 2"
puts "Tijeras = 3"
opcion_jugador = gets.chomp.to_i

# Verificar si la opción del usuario se encuentra en el arreglo de opciones
if opciones.include?(opcion_jugador) 
 
  opcion_pc = rand(1..3) # Obtiene la opción del computador de manera aleatoria
  # Piedra = 1
  # Papel = 2
  # Tijeras = 3
  
  # Verifica a través de if ternarios la opción del usuario y del computador para pasarlo a String de texto y no mostrarle al usuario los valores de las opciones
  opcion_jugador == 1 ? t_opcion_jugador = "Piedra" : (opcion_jugador == 2 ? t_opcion_jugador = "Papel" : t_opcion_jugador = "Tijeras")
  opcion_pc == 1 ? t_opcion_pc = "Piedra" : (opcion_pc == 2 ? t_opcion_pc = "Papel" : t_opcion_pc = "Tijeras")
  # Muestra las opciones al usuario
  puts "Jugador: #{t_opcion_jugador}"
  puts "PC: #{t_opcion_pc}"
  # Compara las opciones y define si el usuario ganó, perdió o empató
  if opcion_jugador == opcion_pc
    puts "***** Empate *****"
  elsif (opcion_jugador == 1 && opcion_pc == 3) || (opcion_jugador == 2 && opcion_pc == 1) || (opcion_jugador == 3 && opcion_pc == 2)
    puts "***** Felicidades, ¡Ganaste! *****"
  else 
    puts "***** Perdiste :( *****"
  end
else
  # Si ingresa un valor que no se encuentra en el arreglo opciones, devuelve mensaje
  puts "Argumento invalido: Debe ser piedra, papel o tijera."
end