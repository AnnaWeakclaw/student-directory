def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create empty array
  students = []
  name = gets.chomp
  
  while !name.empty? do
    puts "Enter cohort"
    cohort = gets.chomp
    puts "Enter hobby"
    hobby = gets.chomp
    cohort = "ASSIGN ME" if cohort.empty?
    hobby = "Coding" if hobby.empty?

    data = {name: name, cohort: cohort, hobby: hobby}
    students << data
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

def print(students)
  index = 0
  while index < students.length
    puts "#{index +1}. #{(students[index][:name]).center(30)} (#{students[index][:cohort]} cohort) HOBBY: #{students[index][:hobby]}"
    index += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
