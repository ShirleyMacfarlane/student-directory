# EXERCISE 6 : Research how the method center() of the String class works. Use it in your code to make the output aligned.
def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  #create an empty array"
  students = []
  name = gets.chomp
  #While the first name is not empty, repeat this code
  while !name.empty? do
    student_hobby_arr = hobbies
    student_country_of_birth = country_of_birth
    students << {name: name, cohort: :november, hobby: student_hobby_arr, country_of_birth: student_country_of_birth}
    puts "Now we have #{students.count} students"
    puts "Please enter the next student or hit return twice to finish"
    name = gets.chomp
  end 
  students
end

def hobbies
  #Enter the student's hobbies
  hobbies = []
  puts "Please enter any hobbies for this student"
  puts "When all hobbies have been entered , hit return twice"
  hobby = gets.chomp
  while !hobby.empty? do
    hobbies << hobby
    puts "Now we have #{hobbies.count} hobbies"
    hobby = gets.chomp
  end
  hobbies
end

def country_of_birth
  #Enter the student's hobbies
  puts "Please enter the country of birth for this student" 
  birth_country = gets.chomp
  birth_country = "None entered " if birth_country == ""
  birth_country
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
    
# Add the students hobby and country of birth to the printed array
def print(students)
  students.each.with_index(1) do |student, index|
    if student[:hobby].length == 0
      puts "#{index}. #{student[:name].center(20)} (#{student[:cohort].to_s.center(12)} cohort) (country of birth: #{student[:country_of_birth].center(15)}) (No hobby entered)"
    elsif student[:hobby].length == 1
      puts "#{index}. #{student[:name].center(20)} (#{student[:cohort].to_s.center(12)} cohort) (country of birth: #{student[:country_of_birth].center(15)}) (hobby: #{student[:hobby].join(",")})"
    else
      puts "#{index}. #{student[:name].center(20)} (#{student[:cohort].to_s.center(12)} cohort) (country of birth: #{student[:country_of_birth].center(15)}) (hobbies: #{student[:hobby].join(",")})"
    end
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
