def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twicwe"
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
  puts "The students of Villians Academy"
  puts "-------------"
end

# Prefix student with a number to identify the position in the array
def print(students)
    students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students) 
  puts "Overall, we have #{students.count} great students"
end

#nothing will happenuntil we call the module
students = input_students
print_header
print(students)
print_footer(students)