# Methods

# Write a program that prints a greeting message.  This program
# should contain a method called greeting that takes a name as
# its parameter and returns a string

print "Please enter your name: "
name = gets

def greeting(input)
    puts "Greetings " + input.chomp + ", how are you today?"
end

greeting(name)

# What do the follow expressions evaluate to?

x = 2 # Sets a variable equal to integer 2
puts x = 2 # Prints the integer 2
p name = "Joe" # Prints "Joe"
four = "four" # Sets variable four equal to string "four"
print something = "nothing" # Prints "nothing"

# Write a program that includes a method called multiply that
# takes two arguments and returns the product of the two nums

def multiply(x, y)
    result = x * y
    puts "#{x} multiplied by #{y} equals #{result}" 
end

print "Enter a number: "
num1 = gets.chomp

print "Enter another number: "
num2 = gets.chomp

x = num1.to_i
y = num2.to_i

multiply(x, y)


# What will the following code print to the screen?

def scream(words)
    words = words + "!!!"
    return
    puts words
end

scream("Yippeee") # Will return Yippeeee!!! (however, it will not print 
                  # because the print statement comes after the return)

# Edit the method definition in exercise #4 so that it does print words on the screen

def scream(words)
    words = words + "!!!"
    puts words
    return
end

scream("Yippeee") # Now it returns printed "Yippeee!!!"

# What does the following error message tell you?

# ArgumentError: wrong number of arugments (1 for 2)
#     from (irb):1:in 'calculate_product'
#     from (irb):4
#     from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in '<main>'

# ANSWER: You're trying to run a method with insufficient arguments. Try
# adding or removing an argument when calling the method 