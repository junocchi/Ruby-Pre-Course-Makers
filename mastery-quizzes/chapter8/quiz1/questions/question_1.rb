# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.

puts "Word, please"
input = gets.chomp

word_arr = input.upcase.split('')
score_arr = []

word_arr.map do |x|
  if x == "A" || x == "E" || x == "I" || x == "O" || x == "U"
    score_arr.push(1)
  elsif x == "L" || x == "N" || x == "R" || x == "S" || x == "T"
    score_arr.push(1)
  elsif x == "D" || x == "G"
    score_arr.push(2)
  elsif x == "B" || x == "C" || x == "M" || x == "P"
    score_arr.push(3)
  elsif x == "F" || x == "H" || x == "V" || x == "W" || x == "Y"
    score_arr.push(4)
  elsif x == "K"
    score_arr.push(5)
  elsif x == "J" || x == "X"
    score_arr.push(8)
  elsif x == "Q" || x == "Z"
    score_arr.push(10)
  end
end

puts score_arr.sum
