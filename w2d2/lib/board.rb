class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
      4.times do
        cup << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 1 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

  end

  def next_turn(ending_cup_idx)

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?{|cup|cup.empty?} || @cups[7..12].all?{|cup|cup.empty?}
  end

  def winner
    player1_score = @cups[6].count
    player2_score = @cups[13].count
    return :draw if player1_score == player2_score
    player1_score < player2_score ? @name2 : @name1
  end
end
