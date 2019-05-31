# Basics

#ex 1
first_name = "Seth"
last_name = "NeJame"

puts (first_name + " " + last_name)

#ex 2
movie1 = {name: "Back to the Future", release: 1985}
movie2 = {name: "It", release: 1990}
movie3 = {name: "The Lion King", release: 1994}
movie4 = {name: "Fight Club", release: 1999}

movies = [movie1, movie2, movie3, movie4]

movies.each do |movie|
    puts "#{movie[:release]}"
end
