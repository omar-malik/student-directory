# putting students into an array
students = [
  "The students of Villains Academy"
  "-------------",
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
] 
# iterating over array of studnets to print each name
students.each do |student|
  puts student
end

print "Overall, we have #{students.count} great students"