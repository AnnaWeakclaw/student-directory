def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create empty array
  students = []
  name = gets.chomp

  while !name.empty?
    puts "Enter cohort"
    cohort = gets.chomp.to_sym
    puts "Enter hobby"
    hobby = gets.chomp
    cohort = "ASSIGN ME" if cohort.empty?
    hobby = "Coding" if hobby.empty?

    data = { name: name, cohort: cohort, hobby: hobby }
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
  unless students.empty?
  index = 0
  while index < students.length
    puts "#{index + 1}. #{(students[index][:name]).center(30)} (#{students[index][:cohort]} cohort) HOBBY: #{students[index][:hobby]}"
    index += 1
  end
end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def print_by_cohort(students)
  cohort_names = students.uniq { |student| student[:cohort] }
  cohort_names.each { |name|
    puts "in cohort: #{name[:cohort]} "
    i = 0
    while i < students.length
      if students[i][:cohort] == name[:cohort]
        puts students[i]
      end
      i += 1
    end
  }
end

students = input_students
print_header
print(students)
print_footer(students)
print_by_cohort(students)
