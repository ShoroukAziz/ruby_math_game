module InputOutput
  MESSAGES = { welcome_message: "
░█──░█ █▀▀ █── █▀▀ █▀▀█ █▀▄▀█ █▀▀ 　 ▀▀█▀▀ █▀▀█ 
░█░█░█ █▀▀ █── █── █──█ █─▀─█ █▀▀ 　 ──█── █──█ 
░█▄▀▄█ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀───▀ ▀▀▀ 　 ──▀── ▀▀▀▀\n
████████╗░██╗░░░░░░░██╗░█████╗░░░░░░░░█████╗░░░░░░░██████╗░██╗░░░░░░█████╗░██╗░░░██╗███████╗██████╗░
╚══██╔══╝░██║░░██╗░░██║██╔══██╗░░░░░░██╔══██╗░░░░░░██╔══██╗██║░░░░░██╔══██╗╚██╗░██╔╝██╔════╝██╔══██╗
░░░██║░░░░╚██╗████╗██╔╝██║░░██║█████╗██║░░██║█████╗██████╔╝██║░░░░░███████║░╚████╔╝░█████╗░░██████╔╝
░░░██║░░░░░████╔═████║░██║░░██║╚════╝██║░░██║╚════╝██╔═══╝░██║░░░░░██╔══██║░░╚██╔╝░░██╔══╝░░██╔══██╗
░░░██║░░░░░╚██╔╝░╚██╔╝░╚█████╔╝░░░░░░╚█████╔╝░░░░░░██║░░░░░███████╗██║░░██║░░░██║░░░███████╗██║░░██║
░░░╚═╝░░░░░░╚═╝░░░╚═╝░░░╚════╝░░░░░░░░╚════╝░░░░░░░╚═╝░░░░░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝
\n
░█▀▄▀█ █▀▀█ ▀▀█▀▀ █──█ 　 ░█▀▀█ █▀▀█ █▀▄▀█ █▀▀ 
░█░█░█ █▄▄█ ──█── █▀▀█ 　 ░█─▄▄ █▄▄█ █─▀─█ █▀▀ 
░█──░█ ▀──▀ ──▀── ▀──▀ 　 ░█▄▄█ ▀──▀ ▀───▀ ▀▀▀\n\n\n",
               correct_answer: "\n✅ Yaay Correct Answer",
               wrong_answer: "\n❌ Wrong answer loser. You lost a life",
               trun_message: "\n▪▪▪▪▪▪▪▪▪▪▪▪ %{player_name}'s turn ▪▪▪▪▪▪▪▪▪▪▪▪\n\n",
               winner_message: "🏆 %{winner_name} won the game with a score of %{winner_lives}/%{initial_lives}",
               enter_name: "What's player %{number} name?" }

  def get_user_input
    print ">> "
    gets.chomp
  end

  def get_player_name(number)
    puts MESSAGES[:enter_name] % { number: number }
    print ">> "
    gets.chomp
  end

  def display(message)
    puts message
  end

  def display_turn(player_name)
    puts MESSAGES[:trun_message] % { player_name: player_name }
  end

  def display_lives(player1_lives, player2_lives)
    puts "\n#{player1_lives} vs #{player2_lives}"
  end

  def display_winner(name, lives, initial_lives)
    vars = { winner_name: name, winner_lives: lives, initial_lives: initial_lives }
    puts MESSAGES[:winner_message] % vars
  end
end
