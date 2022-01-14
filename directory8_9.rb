# EXERCISE 9 : Use the singular form when appropriate and plural form otherwise for printing

#Populate a date array to check the user's input for the cohort month
require 'date'
@date_array = Date::MONTHNAMES

def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  #create an empty array"
  students = []
  name = gets.chomp
  #While the first name is not empty, repeat this code
  while !name.empty? do
    #Check the cohort month is a valid
    cohort = check_cohort_date
    student_hobby_arr = hobbies
    student_country_of_birth = country_of_birth
    students << {name: name, cohort: cohort, hobby: student_hobby_arr, country_of_birth: student_country_of_birth}
    puts "Now we have #{students.count} students"
    puts "Please enter the next student or hit return twice to finish"
    name = gets.chomp
  end
  students
end

def check_cohort_date
  #Check whether a valid cohort month has been entered
  puts "Please enter cohort (month) for the student, leave blank for default cohort"
  cohort = gets.chomp
  while !cohort.empty? do
    cohort[0,1] = cohort[0,1].upcase
    cohort[1,cohort.size] = cohort[1,cohort.size].downcase
    @date_array.include?(cohort) ? break : (puts "ERROR : Cohort entered is not a valid month")
    puts "Please enter cohort (month) for the student, leave blank for default cohort"
    cohort = gets.chomp
    break if cohort.empty?
  end
  cohort.empty? ? cohort = "default" : cohort[0,1] = cohort[0,1].downcase
  cohort
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
  #Enter the student's country of birth
  puts "Please enter the country of birth for this student"
  birth_country = gets.chomp
  birth_country = "None entered " if birth_country == ""
  birth_country
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
  
# Print the list of students grouped by cohort
def print_by_cohort(students)
  group_student_array = students.map.sort_by{|student| student[:cohort]}
  prev_cohort = "start"
  count = 0
  group_student_array.each do |student|
    # Output a heading for the cohort
    cohort_heading = student[:cohort]
    cohort_heading[0,1] = cohort_heading[0,1].upcase
    if student[:cohort] != prev_cohort
      puts "Enrollment for #{student[:cohort]} cohort"
      count = 1
    end
    if student[:hobby].length == 0
      puts "#{count}. #{student[:name].center(20)} (country of birth: #{student[:country_of_birth].center(15)}) (No hobby entered)"
    elsif student[:hobby].length == 1
      puts "#{count}. #{student[:name].center(20)} (country of birth: #{student[:country_of_birth].center(15)}) (hobby: #{student[:hobby].join(",")})"
    else
      puts "#{count}. #{student[:name].center(20)} (country of birth: #{student[:country_of_birth].center(15)}) (hobbies: #{student[:hobby].join(",")})"
    end
    prev_cohort = student[:cohort]
    count += 1
  end
end

def print_footer(students)
  students.count == 1 ? (puts "Overall, we have #{students.count} great student") : (puts "Overall, we have #{students.count} great students") 
end
    
#nothing will happen until we call the modules
students = input_students
print_header
print_by_cohort(students)
print_footer(students)
