def input_students
  puts "Please enter the names of the student"
  name = gets.chomp
  puts "Please enter the age of the student"
  age = gets.chomp
  puts "Please enter the country the student is from"
  country = gets.chomp
  puts "Please enter the gender of the student"
  gender = gets.chomp
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: "november", age: age, country: country, gender: gender}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the names of the student"
    name = gets.chomp
    puts "Please enter the age of the student"
    age = gets.chomp
    puts "Please enter the country the student is from"
    country = gets.chomp
    puts "Please enter the gender of the student"
    gender = gets.chomp
    puts "To finish, just hit return twice"
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
      puts "#{index + 1}. Name:#{student[:name].center(5)}, From: (#{student[:cohort].center(5)} cohort), Age: #{student[:age].center(5)}, Country: #{student[:country].center(5)}, Gender: #{student[:gender].center(5)}"
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
