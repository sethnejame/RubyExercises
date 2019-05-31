# Flow Control

# Do the following expressions return true or false?

puts (32 * 4) >= 129 #false (128 is not greater than or equal to 129)
puts false != !true #false (false is not 'not equal' to 'not true')
puts true == 4 #false (true is a boolean, not an integer)
puts false == (847 == '847') #true (the int 847 and string 847 are not equal [false] and so false equals false) 
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true || true || false

# Write a method that takes a string as an argument.  The method should
# return a new, all-caps version of the string, only if the string is
# longer than 10 characters

def make_upper(string)
    if string.length > 10
        puts string.upcase
    else
        puts "Sorry, '#{string}'' is not long enough to capitalize."
    end
end

# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100,
# or above 100

print "Enter a number between 1 and 100: "
input = gets
number = input.to_i

def range_finder(integer)
    if integer > 100
        puts "You sly dog, you entered a number greater than 100!"
    elsif integer > 50 && integer <= 100
        puts "Your number is between 51 and 100!"
    elsif integer >= 0 && integer <= 51
        puts "Your number is between 0 and 50!"
    else
        puts "Naughty naughty! You entered a number less than 0!"
    end
end

range_finder(number)

# # # What will each block of code below print to the screen? Write your
# # # answer on a piece of paper or in a text editor and then run each
# # # block of code to see if you were correct

'4' == 4 ? puts("TRUE") : puts("FALSE") # uses tertiary operator.  will output false

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3) # evals to 3 == 3, will output "Did you get it right?"
    puts "Did you get it right?"
else
    puts "Did you?"
end

y = 9
x = 10
if (x + 1) <= (y) #false
    puts "Alright."
elsif (x + 1) >= (y) #false
    puts "Alright now!"
elsif (y + 1) == x # true, evals to 10 == 10. Will output "ALRIGHT NOW!"
    puts "ALRIGHT NOW!"
else
    puts "Alrighty!"
end

# Rewrite your program from exercise 3 using a case statement. Wrap
# this new case statement in a method and make sure it still works


print "Enter a number between 1 and 100: "
input = gets
number = input.to_i

def new_range_finder(number)
    case number
        when number > 100
            puts "You sly dog, you entered a number greater than 100!"
        when 51..100
            puts "Your number is between 51 and 100!"
        when 0..50
            puts "Your number is between 0 and 50!"
        else
            puts "Naughty naughty! You entered a number less than 0!"
        end
    end

new_range_finder(number)

# When you run the following code...

def equal_to_four(x)
    if x == 4
        puts "yup"
    else
        puts "nope"
    end

equal_to_four(5)

# You get the following error: exercise.rb:100: syntax error, unexpected end-of-output, expecting keyword-end
# ANSWER: It's because you need to add another 'end' to close the method definition