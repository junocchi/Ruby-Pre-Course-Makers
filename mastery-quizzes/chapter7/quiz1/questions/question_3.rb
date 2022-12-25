# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```

# river = "-----,--C--,CC-CC,CC-CC"

river_p = "--P--,--C--,CC-CC,CC-CC"
river_p_arr = river_p.split(",")
river_mv2l = "-----,-PC--,CC-CC,CC-CC"
river_mv2l_arr = river_mv2l.split(",")
river_mv2r = "-----,--CP-,CC-CC,CC-CC"
river_mv2r_arr = river_mv2r.split(",")
river_mv3lr = "-----,--C--,CCPCC,CC-CC"
river_mv3lr_arr = river_mv3lr.split(",")
river_mv4n = "-----,--C--,CC-CC,CCPCC"
river_mv4n_arr = river_mv4n.split(",")

while true do
  puts river_p_arr
  puts "Type right, left or neither"
  move = gets.chomp
  if move == "neither"
    puts "You were eaten."
    break
  elsif move == "left"
    puts river_mv2l_arr
    puts "Type right, left or neither"
    move = gets.chomp
    if move == "right"
      puts river_mv3lr_arr
      puts "Type right, left or neither"
      move = gets.chomp
      if move == "neither"
        puts river_mv4n_arr
        puts "Type right, left or neither"
        move = gets.chomp
        if move == "neither"
          puts "You survived!"
        else
          puts "You were eaten."
        end
      else
        puts "You were eaten."
        break
      end
    else
      puts "You were eaten."
      break
    end
  elsif move == "right"
    puts river_mv2r_arr
    puts "Type right, left or neither"
    move = gets.chomp
    if move == "left"
      puts river_mv3lr_arr
      puts "Type right, left or neither"
      move = gets.chomp
      if move == "neither"
        puts river_mv4n_arr
        puts "Type right, left or neither"
        move = gets.chomp
        if move == "neither"
          puts "You survived!"
        else
          puts "You were eaten."
        end
      else
        puts "You were eaten."
        break
      end
    else
      puts "You were eaten."
      break 
    end
  end
end
