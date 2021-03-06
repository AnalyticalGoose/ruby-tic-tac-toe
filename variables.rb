module Variables
  WIN_CONDITIONS = [
    (/X{3}....../), 
    (/...X{3}.../), 
    (/......X{3}/), 
    (/X..X..X../), 
    (/.X..X..X./), 
    (/..X..X..X/), 
    (/X...X...X/), 
    (/..X.X.X../),
    (/O{3}....../), 
    (/...O{3}.../), 
    (/......O{3}/), 
    (/O..O..O../), 
    (/.O..O..O./), 
    (/..O..O..O/), 
    (/O...O...O/), 
    (/..O.O.O../)
  ]
  MARKER = ["error", "X", "O"]
  
  BOARD = " ---+---+---\n| 1 | 2 | 3 |
  ---+---+---\n| 4 | 5 | 6 |\n ---+---+---
| 7 | 8 | 9 |\n ---+---+---"  
end