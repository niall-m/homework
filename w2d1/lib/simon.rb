class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 1
      system("clear")
    end
  end

  def require_sequence
    puts "Repeat the sequence by entering each color on a new line."
    @seq.each do |color|
      user_input = gets.chomp
      if user_input.downcase != color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.shuffle.first
  end

  def round_success_message
    "Successful round. Here's the next sequence:"
  end

  def game_over_message
    puts "Game Over! You lasted #{sequence_length - 1} round(s)."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
