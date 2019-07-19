def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Cohort:"
    cohort = gets.chomp
    cohort = "November" if cohort.empty?
    puts "Age:"
    age = gets.chomp
    age = "__" if age.empty?
    puts "Gender:"
    gender = gets.chomp
    gender = "__" if gender.empty?
    puts "Location:"
    location = gets.chomp
    location = "__" if location.empty?
    # add the student hash to the array
    students << {name: name, cohort: cohort, age: age, gender: gender, location: location}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Name:"
    name = gets.chomp
  end
  # return the array of students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  while true do
    students.each_with_index do |student, index|
      puts "#{index + 1}. Name:#{student[:name].center(7)}, From: (#{student[:cohort]} cohort), #{student[:age]} years old, #{student[:gender]}, From: #{student[:location]}"
    end
    break
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
