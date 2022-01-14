# EXERCISE 2 : Print the students whose name begins with a specific letter.
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

#print the students whose name begins with a specific letter.
def initial_print (students)
  puts "Please enter a letter to print a list of the students whose first names begins with that letter"
  letter = gets.chomp
  count = 1
  students.each do |student| 
    puts "#{count}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name][0,1] == letter
    count += 1 if student[:name][0,1] == letter
  end
end
  
#nothing will happen until we call the modules
students = input_students
print_header
initial_print(students)
print_footer(students)
