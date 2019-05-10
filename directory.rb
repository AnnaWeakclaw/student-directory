@students = []
def interactive_menu
  loop do
    print_menu 
    selection = gets.chomp
    case selection
    when "1"
      @students = input_students
    when "2"
      
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def print_menu
   # 1. print the menu and ask the user what to do
   puts "1. Input the students"
   puts "2. Show the students"
   puts "9. Exit" # 9 because we'll be adding more items
   # 2. read the input and save it into a variable
end

def show_students
  print_header
  print
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

def print
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end
interactive_menu