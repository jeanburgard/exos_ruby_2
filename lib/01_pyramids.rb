def pyramid_diamond_from_input
    print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    size = gets.chomp.to_i
  
    # Partie supérieure du losange
    (1..size).each do |i|
      print " " * (size - i)
      puts "*" * (2 * i - 1)
    end
  
    # Partie inférieure du losange
    (size - 1).downto(1) do |i|
      print " " * (size - i)
      puts "*" * (2 * i - 1)
    end
  end
  
  
  pyramid_diamond_from_input