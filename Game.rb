require "./Question"

class Game
  include InputOutput

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = player1
  end

  # Changes the turn between the two players
  def alternate_turns
    @turn = (@turn == @player1) ? @player2 : @player1
  end

  # Selects the winner
  def set_winner()
    @winner = @player1.is_dead? ? @player2 : @player1
  end

  # review the user answer and display results
  def review_answer(question, player_answer)
    if (question.is_correct?(player_answer))
      display MESSAGES[:correct_answer]
    else
      display MESSAGES[:wrong_answer]
      @turn.lose_a_life
    end
  end

  #main game loop: play until ine of the two players is dead
  def play()
    until (@player1.is_dead? || @player2.is_dead?)
      display_turn @turn.name
      question = Question.new
      display question.to_s
      player_answer = get_user_input
      review_answer question, player_answer
      display_lives @player1.get_score, @player2.get_score
      alternate_turns
    end
  end

  # called after the game loop is over: sets the winner and displays who they are
  def announce_winner()
    set_winner
    display_winner @winner.name, @winner.lives, @winner.INITIAL_LIVES
  end
end
