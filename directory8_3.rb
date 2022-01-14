# EXERCISE 3 : print the list of students whose name is shorter than 12 characters.
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array"
  students = []
  name = gets.chomp
  #While the first name is not empty, repeat this code
  while !name.empty? do
    #add the students name to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
    
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# Prefix student with a number to identify the position in the array
def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
    
# Only return the elements of the array where the number of letters is greater than 12
def print_name_greater_twelve(students)
  count = 1
  students.each.with_index(1) do |student|
    puts "#{count}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].size > 12
    count += 1 if student[:name].size > 12
  end
end
  
#print the students whose name begins with a specific letter.
def initial_print (students)
  puts "Please enter a letter to print the students names starting with that letter"
  letter = gets.chomp
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name][0,1] == letter && student[:name].size > 12
  end
end
    
#nothing will happen until we call the modules
students = input_students
print_header
print_name_greater_twelve(students)
print_footer(students)
