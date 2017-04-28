
class Game

  attr_accessor :player_1, :player_2, :attacker, :receiver

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players_turn = false
    # @attacker = player_1
    # @receiver = player_2
  end

  def whos_turn
    if @players_turn
      @receiver = @player_1
      @attacker = @player_2
      @players_turn = false
    else
      @receiver = @player_2
      @attacker = @player_1
      @players_turn = true
    end
  end

  def attack
    @receiver.receive_damage
  end

end
