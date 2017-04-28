
class Game

  attr_accessor :player_1, :player_2, :player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players_turn = true
  end

  def whos_turn
    if @players_turn
      player = @player_2
      @players_turn = false
    else
      player = @player_1
      @players_turn = true
    end
    @player = player
  end

  def attack
    @player.receive_damage
  end

end
