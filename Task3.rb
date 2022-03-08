puts 'Enter Desired Length of password'
length_of_password = gets.to_i
puts 'Enter Length of alphabets less than or equal to 26'
alpha_length = gets.to_i
puts 'Enter Length of numerical less than or equal to 10'
num_length = gets.to_i
puts 'Enter Length of symbols less than or equal to 20'
symbols_length = gets.to_i

numeric = '0123456789'
alphabets_small = 'abcdefghijklmnopqrstuvwxyz'
alphabets_large = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
symbols = '!@#$%^&*/+-`~?><:;|.'

if alpha_length <= alphabets_large.length && alpha_length <= alphabets_small.length && num_length <= numeric.length && symbols_length <= symbols.length

  password_items = numeric[0, num_length] + alphabets_small[0, alpha_length] + alphabets_large[0, alpha_length] + symbols[0, symbols_length]
  password = ''
  index = 0

  if length_of_password >= 7 && length_of_password <= password_items.length
    while index < length_of_password
      rand_value = rand 0..password_items.length - 1
      password += password_items[rand_value]
      index += 1
    end

    puts 'Random Generated Password:'
    puts password.to_s != '' ? password : 'Unable to generate password'

    flag = false
    File.readlines('passwords1.csv').each { |line| flag = password == line }

    if flag == false
      pass_file = File.new('passwords1.csv', 'a')
      pass_file.puts(password)
      pass_file.close

      puts 'Password Generated And save in file successfully'
    else
      puts 'Password already exist in record!!'
    end
  else
    puts 'The Length of Password should be greater than equal to 7'
  end

else
  puts "Check your input of numeric , alphabet and sysmbols length...
   \n alphabets actual length is 26  \n Numerics are 10 \n symbols are 20"
end
