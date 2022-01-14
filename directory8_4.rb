# EXERCISE 4 : Rewrite the each() method that prints all students using while or until control flow methods (Loops).
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
    
# Rewrite the each method to use a while loop
def print(students)
  index = 0
  row = 1
  while index < students.length
    puts "#{row}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
    row += 1
  end
end
    
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
    
#nothing will happen until we call the modules
students = input_students
print_header
print(students)
print_footer(students)