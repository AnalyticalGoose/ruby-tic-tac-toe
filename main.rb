require_relative 'variables.rb'

class Game
  include Variables   
  def initialize
    @board = BOARD
    @marker = MARKER
    @turn = 1
    @selected = Array.new
    @win_checker = "123456789"
  end

  def get_player_selection
    puts "Player #{@turn}, please enter your selection"
    @selection = gets.chomp

    unless @selected.include?(@selection)
      update_board
      update_vars
      win_check
      get_player_selection
    else
      puts "Error, invalid input"
      get_player_selection
    end
  end

  def update_board
    if @selection == nil || @marker == nil
      puts "Error, no input"
    else
      @board.gsub!(@selection, @marker[@turn])
      @win_checker.gsub!(@selection, @marker[@turn])
      puts @board
    end
  end

  def update_vars
    @selected.push(@selection)
    @turn == 1 ? @turn +=1 : @turn -= 1
  end

  def win_check
    if WIN_CONDITIONS.any? {|x| @win_checker.match(x)} 
      puts "Game Over!"
      abort("To play again, please restart the script")
    elsif @selected.length == 8
      puts "Draw"
      abort("To play again, please restart the script")
    end
  end
end

game = Game.new
game.get_player_selection