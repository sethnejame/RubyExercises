# Create three hashes
person1 = {name: "Seth", age: 33, gender: "male"}
person2 = {name: "Noel", age: 80, gender: "male"}
person3 = {name: "Dash", age: 28, gender: "female"}

# Create my_group array
my_group = [person1, person2, person3]

# Print the array out to the terminal screen
puts my_group

# Iterate over each person in the "my_group" array of hashes
my_group.each do |person|
    puts "#{person[:name]} is a #{person[:age]} year old #{person[:gender]}!"
end

