@students =[]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list(students)
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students(students)
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"


  name = gets.chomp

  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"

    name = gets.chomp
  end
  
end

def print_menu
  puts "type the number of the option you want to select"
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students(students)
  print_header
  print_students_list(@students)
  print_footer(@students)
end

def process(selection)
  case selection
    when "1"
      input_students(@students)
    when "2"
      show_students(@students)
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu