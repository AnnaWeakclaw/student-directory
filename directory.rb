@students = []
def interactive_menu
  loop do
    print_menu 
    process(gets.chomp)
  end
end

def print_menu
   # 1. print the menu and ask the user what to do
   puts "1. Input the students"
   puts "2. Show the students"
   puts "3. Save the list to students.csv"
   puts "9. Exit" # 9 because we'll be adding more items
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def show_students
  print_header
  print_student_list
  print_footer
end
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create empty array
  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
  @students
end

def print_header
  puts "The students of Villains Academy"
  puts "---------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
#open the file for writing
file = File.open("students.csv", "w")
@students.each do |student|
  student_data = [student[:name], student[:cohort]]
csv_line = student_data.join(",")
file.puts csv_line
end
end 
interactive_menu