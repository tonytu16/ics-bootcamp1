puts 'full name greeting'
puts 'Welcome, please input your full name!'
puts 'Please type in your first name'
first_name = gets.chomp
puts 'what is your middle name?'
middle_name = gets.chomp
puts 'what is your last name?'
last_name = gets.chomp
full_name = first_name + ' ' + middle_name + ' ' + last_name
puts 'It is nice meeting you' + full_name
