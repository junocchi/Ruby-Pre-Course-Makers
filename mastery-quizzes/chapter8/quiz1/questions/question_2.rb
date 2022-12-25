# Write a program that lists the names of people who all like a
# specific thing. It should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Ask the user to input a category value e.g. `kiwi`.
# * `puts` the names of each of the people who like the thing in the
#   category, one per line.
#
# * Example output:
#   ```
#   Enter what category to search
#   sport
#   Enter what value to search for
#   squash
#   Mary
#   Lauren
#   Govind
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.  The user might enter a
# category value that no person has (e.g. `mango`).

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

puts "Enter what value to search for"
value = gets.chomp.to_s

arr_by_category = people.select { |people| people[category] == value }

if arr_by_category.length == 1
  arr1 = arr_by_category[0]
  puts arr1["name"]
elsif arr_by_category.length == 2
  arr1 = arr_by_category[0]
  arr2 = arr_by_category[1]
  puts arr1["name"]
  puts arr2["name"]
elsif arr_by_category.length == 3
  arr1 = arr_by_category[0]
  arr2 = arr_by_category[1]
  arr3 = arr_by_category[2]
  puts arr1["name"]
  puts arr2["name"]
  puts arr3["name"]
end
