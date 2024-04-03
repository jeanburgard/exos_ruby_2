def roll_dice
    rand(1..6)
  end
  
  def move_player(position, dice_result)
    case dice_result
    when 5, 6
      position += 1
      puts "Vous avancez d'une marche et vous êtes maintenant à la marche #{position}."
    when 1
      if position > 0
        position -= 1
        puts "Vous descendez d'une marche et vous êtes maintenant à la marche #{position}."
      else
        puts "Vous êtes déjà au rez-de-chaussée, vous ne pouvez pas descendre plus bas."
      end
    else
      puts "Rien ne se passe et vous êtes toujours à la marche #{position}."
    end
    return position
  end
  
  def play_game
    puts "Bienvenue dans le jeu de l'escalier !"
    puts "Vous êtes actuellement au rez-de-chaussée, prêt à grimper les escaliers jusqu'à la 10ème marche."
    
    position = 0
    until position == 10
      puts "Appuyez sur Entrée pour lancer le dé..."
      gets.chomp
      dice_result = roll_dice
      puts "Vous avez lancé le dé et obtenu un #{dice_result}."
      position = move_player(position, dice_result)
    end
  
    puts "Félicitations ! Vous avez atteint la 10ème marche. Vous avez gagné le jeu !"
  end
  
  play_game
  