require "colorize"

loop do

banner=<<-EOS

▒███████▒▓█████  ██▀███   ▒█████    ██████      ██████  ██▓ ███▄ ▄███▓ ██▓███   ██▓    ▓█████ 
▒ ▒ ▒ ▄▀░▓█   ▀ ▓██ ▒ ██▒▒██▒  ██▒▒██    ▒    ▒██    ▒ ▓██▒▓██▒▀█▀ ██▒▓██░  ██▒▓██▒    ▓█   ▀ 
░ ▒ ▄▀▒░ ▒███   ▓██ ░▄█ ▒▒██░  ██▒░ ▓██▄      ░ ▓██▄   ▒██▒▓██    ▓██░▓██░ ██▓▒▒██░    ▒███   
  ▄▀▒   ░▒▓█  ▄ ▒██▀▀█▄  ▒██   ██░  ▒   ██▒     ▒   ██▒░██░▒██    ▒██ ▒██▄█▓▒ ▒▒██░    ▒▓█  ▄ 
▒███████▒░▒████▒░██▓ ▒██▒░ ████▓▒░▒██████▒▒   ▒██████▒▒░██░▒██▒   ░██▒▒██▒ ░  ░░██████▒░▒████▒
░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░   ▒ ▒▓▒ ▒ ░░▓  ░ ▒░   ░  ░▒▓▒░ ░  ░░ ▒░▓  ░░░ ▒░ ░
░░▒ ▒ ░ ▒ ░ ░  ░  ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░▒  ░ ░   ░ ░▒  ░ ░ ▒ ░░  ░      ░░▒ ░     ░ ░ ▒  ░ ░ ░  ░
░ ░ ░ ░ ░   ░     ░░   ░ ░ ░ ░ ▒  ░  ░  ░     ░  ░  ░   ▒ ░░      ░   ░░         ░ ░      ░   
  ░ ░       ░  ░   ░         ░ ░        ░           ░   ░         ░                ░  ░   ░  ░
░                                                                                             
  
+
            (discord:@zer0who)                  
EOS
puts banner.colorize(:green)


puts "Ingresa una Opcion"
puts "[".colorize(:red)+"1".colorize(:white)+"]".colorize(:red)+"Escaneo basico de IP".colorize(:white)
puts "[".colorize(:red)+"2".colorize(:white)+"]".colorize(:red)+"Escaneo profundo de la IP".colorize(:white)
puts "[".colorize(:red)+"3".colorize(:white)+"]".colorize(:red)+"Salir".colorize(:white)
print "Opcion: "
opcion=gets.chomp.to_i
#Case ruby
case opcion
#Solicitud rapida a la api de ip-api.com
when 1
  puts ""
  print "Ingrese la IP: "
ip1=gets.chomp
  puts "Obteniendo informacion de la IP..."
      sleep (1.3)
  url=IO.popen("curl -s http://ip-api.com/#{ip1}").read
  puts url
 break
when 2
   puts ""
  print "Ingrese la IP: "
 ip2=gets.chomp
   puts "Obteniendo informacion de la IP..."
  sleep (1.3)
    whoi=IO.popen("whois #{ip2}").read
   puts whoi.colorize(:blue)
  break
when 3 
     puts ""
     puts "Saliendo...".colorize(:blue)
     sleep 1.3
    system("exit")
 break
else
 puts ""
   puts "Opcion incorrecta intente nuevamente"
  sleep(1.5)
 system("clear")
end
end