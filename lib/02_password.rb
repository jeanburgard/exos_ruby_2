def set_password
    print "Définissez votre mot de passe : "
    password = gets.chomp
    puts "Mot de passe défini avec succès !"
    return password
  end
  
  def login(password)
    print "Entrez votre mot de passe pour accéder à l'espace sécurisé : "
    input_password = gets.chomp
    if input_password == password
      puts "Accès autorisé ! Vous êtes dans l'espace sécurisé."
      welcome_screen
    else
      puts "Mot de passe incorrect. Accès refusé."
    end
  end
  
  def welcome_screen
    puts "Bienvenue dans votre zone secrète !"
    puts "Voici quelques secrets :"
    puts "- Le contenu des textos du téléphone de votre ami est : \"Je ne peux pas croire ce qui vient de se passer !\""
    puts "- Les messages WhatsApp de votre collègue disent : \"Nous devons absolument finir ce projet aujourd'hui.\""
  end
  
  # Définir le mot de passe
  password = set_password
  
  # Tentative de connexion
  login(password)