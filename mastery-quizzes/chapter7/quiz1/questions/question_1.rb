# Write a program that draws bar graphs.  It should:
# * Ask the user for a list of numbers.  The user enters them
#   separated by commas, e.g.: `10,4,2,7,5,1`.
# * Print a horizontal bar graph of the numbers in order.
#   * Bar should be made up of `-`s.
#
# * Example output from running the program:
#   ```
#   Enter some numbers to graph
#   10,4,2,7,5,1
#   ----------
#   ----
#   --
#   -------
#   -----
#   -
#   ```
#
# * Note: You can assume the user will only enter integers separated
#   by commas with no spaces.

puts "Add a list of numbers, separated by commas, e.g.: `10,4,2,7,5,1`."

list_of_num = gets.chomp

list_of_num.split(",").each do |num|
  puts "-" * num.to_i
end