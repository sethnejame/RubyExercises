# Given an array of integers
# Output only the even integers

puts (1..10).to_a.select(&:even?)



# Given

family = {
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank", "rob", "david"],
    aunts: ["mary", "sally", "susan"]
}

# Select only immediate family memebers

sisters = family.select { |k| k["sisters"] }
brothers = family.select { |k| k["brothers"] }
puts immediate_family = [sisters, brothers]

# %w converts things to individual elements in an array

sentence = "The quick brown fox jumped over the lazy dog"
puts sentence

arr = %w(The quick brown fox jumped over the lazy dog)
puts arr

# Write a program that utilizes 'merge' and 'merge!'

wallets1 = {karen: 20, bob: 500, charlie: 200}
wallets2 = {karen: 120, seth: 100, natalie: 150}

# Combines wallet1 and wallet2 into "combo" and subtracts karen from wallets2(v2) from karen in wallets1(v1)
puts combo = wallets1.merge(wallets2) { |key, v1, v2, v3, v4| v2 - v1 } 

# Combines wallet1 and wallet2 into "new_combo" and tells merge! to keep the duplicate karen from wallet1 (v1)
puts new_combo = wallets1.merge!(wallets2) { |key, v1, v2, v3, v4| v1 }

# Hash methods

animals = {reptile: "snake", mammal: "monkey", bird: "robin", marsupial: "kangaroo", amphibian: "salamander"}

# Print all the keys
animals.each do |type, name|
    puts "#{type}"
end

# Print all the values
animals.each do |type, name|
    puts "#{name}"
end

# Print both
animals.each do |type, name|
    puts "A #{name} is a #{type}"
end

# Access a specific hash in an array
  person = {name: 'Bob', occupation: 'web dev', hobbies: 'painting'}

# List the person's name
puts person[:name]

# Write a program that uses a method to find a value in a hash
if person.find { |name, who| who == 'Bob'}
    puts "Bob is part of the array"
else
    puts "Bob is not contained in the array"
end

# Write a program that prints out the anagrams
words = ['demo', 'none', 'tied', 'evil', 'dome',
        'fowl', 'veil', 'wolf', 'diet', 'vile',
        'flow', 'neon']

# First, create an empty hash array
result = {}

# Second, iterate over each word in the 'words' array
words.each do |word|

# Create a new var named 'key', and in it, split each word into seperate letters (split)
# Sort them alphabetically (sort) 
# And rejoin them into a new word (join)    
key = word.split('').sort.join
puts key
# Does the result hash contain the new 'key' variable we just made?
    if result.has_key?(key) 
# If so, put that word associated with the key we just made into the result 
        result[key].push(word) 
    else # Else, make a new key/val combo inside the result hash
        result[key] = [word]
        end
    end

# For each key/value pair inside result, iterate thru and only print the values object
result.each do |k, v|
    puts "------"
    p v
    end

# Solution Courtesy of:
# https://stackoverflow.com/questions/39869703/ruby-anagram-codes

# What's the difference between these two hashes?
x = "hi there"

my_hash = {x: "some value"} # this hash outputs a key of ":x" with a value of "some value"
my_hash2 = {x => "some value"} # this hash outputs a key that is a variable containing the value "hi there" and a corresponding val "some value"

puts my_hash
puts my_hash2