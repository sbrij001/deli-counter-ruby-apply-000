# Hint: Review adding and removing elements from an array as well as iterating with index numbers.
# Also, many of the methods to add and remove elements from an array can also be used to add
# and remove elements to a string.

# create a method #line that takes in an array
# The method should return a string
# if the line array is empty #line should say the line is empty
# if there are people in the line #line should display the current line
# _________
# create a new array
# use a conditional to check the length of the katz deli
# If the length is > 0 use the each_with_index to iterate thru the array
# puts current line:(index + 1) + the name
# else display "The line is currently empty."
# Make sure to convert the array into a string before returning using join

katz_deli = [] # => katz_deli = [John]
def line(katz_deli)
  new_arr = Array.new
    if katz_deli.length > 0
      katz_deli.each_with_index do |name, index|
          new_arr << "#{index + 1}. #{name}"
      end
      puts "The line is currently: #{new_arr.join(" ")}" # =>  The line is currently: 1. John
    else
      puts "The line is currently empty."
    end
end
# create a method #take_a_number that accepts 2 arguments.
# An array and a string of the person joining the end of the line.
# #take_a_number should call out (puts) the person's name along with their position in line.
# Top-Tip: Remember that people like to count from 1, not from 0 ("zero") like computers.
# ________
# #take_a_number should add a person to the end of the line.
# #take_a_number needs to be able to add mult people in a row.
# hint for me to use the .push method
# use the .index() method to locate the index where the ele is found + 1
# store the index in a var
# puts Welcome, person . You are number position in line.


def take_a_number(katz_deli, person)
    katz_deli.push(person) # will evaulate to the katz_deli arr
    position = katz_deli.index(person) + 1 #will evaulate to the index where the ele is found + 1.
    puts "Welcome, #{person}. You are number #{position} in line."
end

# create a method #now_serving that accepts the argument katz_deli
# create a method #now_serving puts the next person in line and then remove them from the front.
# If there is nobody in line, it should puts "There is nobody waiting to be served!".
# _________
# if there are people in the line
# #now_serving should serve the first person in line and remove them from the queue
# hint to use shift method
# store the ele in a var
# puts cureently serving + the person its serving
# If there is nobody in line puts "There is nobody waiting to be served!".

def now_serving(katz_deli)
  if katz_deli.length > 0
    serving = katz_deli.shift #which will remove the first element and evaluate to the element I am trying to remove.
    puts "Currently serving #{serving}."
  else
    puts "There is nobody waiting to be served!"
  end
end
