#create a method #line
# #line should say the line is empty
# if there are people in the line #line should display the current line


# Write your code here.
katz_deli = []
#use the each method to go thru the array
#add the index plus one to the array


def line(katz_deli)
  new_arr = []
    if katz_deli.length > 0
      katz_deli.each_with_index do |name, index|
          new_arr << "#{index + 1}. #{name}"
      end
      puts "The line is currently: #{new_arr.join(" ")}"
    else
      puts "The line is currently empty."
    end
end


def take_a_number(katz_deli, string)
  puts "Welcome #{string}. You're  "
end
