turn = 1
marker = ["error", "X", "O"]
selected = []
$win_checker = "123456789"
board = " ---+---+---\n| 1 | 2 | 3 |
 ---+---+---\n| 4 | 5 | 6 |\n ---+---+---
| 7 | 8 | 9 |\n ---+---+---"  

def win_check(win_checker, selected)
win_conditions = [
(/X{3}....../), (/...X{3}.../), (/......X{3}/), (/X..X..X../), (/.X..X..X./), (/..X..X..X/), 
(/X...X...X/), (/..X.X.X../),(/O{3}....../), (/...O{3}.../), (/......O{3}/), (/O..O..O../), (/.O..O..O./), (/..O..O..O/),
(/O...O...O/), (/..O.O.O../)]
  
  for x in win_conditions
    if $win_checker.match(x)
      puts "Game Over!"
      abort("To play again, please restart the script")
    elsif selected.length == 8
      puts "Draw!"
      abort("To play again, please restart the script")
    end
  end
end
    
def update_board(selection, marker, board, selected)
  if selection == nil || marker == nil
    puts "Error, no input"
  else
    board.gsub!(selection, marker)
    $win_checker.gsub!(selection, marker)
    puts board
    win_check($win_checker, selected)
  end
end

def get_player_selection(selected, marker, turn, board)
puts "Player #{turn}, please enter your selection"
selection = gets.chomp
  if selected.include?(selection) == false
    update_board(selection, marker[turn], board, selected)
    update_vars(selection, selected, turn, marker, board)
  else
    puts "Error"
    get_player_selection(selected, marker, turn, board)
  end
end

def update_vars(selection, selected, turn, marker, board)
selected.push(selection)
  if turn == 1
    turn +=1
    get_player_selection(selected, marker, turn, board)
  else 
    turn -= 1
    get_player_selection(selected, marker, turn, board)
  end
end

get_player_selection(selected, marker, turn, board)