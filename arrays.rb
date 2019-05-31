# Array Exercises

# check array for number
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include? number
    puts "The array includes number 3"
else
    puts "The array does not include number 3"
end

# inserts a range of numbers into array
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

# return the word "example"

arr = [["test", "hello", "world"], ["example","mem"]]
puts arr[1][0]

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
arr.index[5]
arr[5]