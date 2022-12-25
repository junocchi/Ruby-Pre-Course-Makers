# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "Enter what category to search: sport or fruit."

category = gets.chomp
groups_arr = []

if category == "sport"
  groups_arr.push("squash", "weightlifting", "cycling")
elsif category == "fruit"
  groups_arr.push("blackberry", "orange", "banana", "kiwi")
end

groups_arr.each do |element|
  names_arr = []
  people.each do |person|
    if person[category] == element
      names_arr.push(person["name"])
    end
  end
  puts element
  puts names_arr
end