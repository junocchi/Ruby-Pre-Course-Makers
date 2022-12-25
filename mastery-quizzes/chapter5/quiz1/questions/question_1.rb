# Write a program that acts like a magic 8 ball.  It should:
# * Randomly choose one of five predictions:
#   * `It is certain`
#   * `It is decidedly so`
#   * `Ask again later`
#   * `Outlook not so good`
#   * `Very doubtful`
# * `puts` the prediction it chose.
# * Example output from running the program several times:
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   It is certain

magic_8_ball = rand(1..5)

if magic_8_ball == 1
  puts "It is certain"
elsif magic_8_ball == 2
  puts "It is decidedly so"
elsif magic_8_ball == 3
  puts "Ask again later"
elsif magic_8_ball == 4
  puts "Outlook not so good"
elsif magic_8_ball == 5
  puts "Very doubtful"
end