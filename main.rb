player_turn = 1

def draw_board()
tiles = {tl: "1", tm: "2", tr: "3", 
         ml: "4", mm: "5", mr:"6", 
         bl: "7", bm: "8", br: "9"}  

board = 
" ---+---+---
| #{tiles[:tl]} | #{tiles[:tm]} | #{tiles[:tr]} |
 ---+---+---
| #{tiles[:ml]} | #{tiles[:mm]} | #{tiles[:mr]} |
 ---+---+---
| #{tiles[:bl]} | #{tiles[:bm]} | #{tiles[:br]} |
 ---+---+---"

puts board
end

def get_user_input(player_turn)
available = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  puts "Player #{player_turn} please enter your selection"
  selection = gets.chomp
  if selection.to_i.between?(1, 9) && available.include?(selection)
    puts "Your selection is #{selection}"
  else
    puts "Invalid input"
    get_user_input(player_turn)
  end
end

draw_board
get_user_input(player_turn)
