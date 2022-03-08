# Global Variables

$numeric = '0123456789'
$alphabets_small = 'abcdefghijklmnopqrstuvwxyz'
$alphabets_large = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
$symbols = '!@#$%^&*/+-`~?><:;|.'

class PasswordGenerator
  attr_accessor :user_pass, :alphabets_l, :numeric_l, :symbol_l

  def initialize(user_length,alpha_length,num_length,sym_length)
    @user_pass = user_length
    @alphabets_l = alpha_length
    @numeric_l = num_length
    @symbol_l = sym_length
  end

  def check_password(password)
    flag = false
    File.readlines('passwords1.csv').each { |line| flag = password == line }

    return puts 'Password already exist in record!!' if flag

    pass_file = File.new('passwords1.csv', 'a')
    pass_file.puts(password)
    pass_file.close

    puts 'Password Generated And save in file successfully'
  end

  def random_password(index, size_of_password, password_items)
    pass = ''
    while index < size_of_password
      rand_value = rand 0..password_items.length - 1
      pass += password_items[rand_value]
      index += 1
    end
    return pass
  end

  def generate_password()
    check_alpha_large = alphabets_l <= $alphabets_large.length
    check_alpha_small = alphabets_l<= $alphabets_small.length
    check_numeric = numeric_l <= $numeric.length
    check_sym = symbol_l <= $symbols.length

    if check_alpha_large && check_alpha_small && check_numeric && check_sym

      pass1 = $numeric[0, @numeric_l] + $alphabets_small[0, @alphabets_l]
      pass2 = $alphabets_large[0, @alphabets_l] + $symbols[0, @symbol_l]

      password_items = pass1 + pass2
      password = ''
      index = 0

      if user_pass >= 7 && user_pass <= password_items.length
        password = random_password(index, user_pass, password_items)

        puts 'Random Generated Password:'
        puts password.to_s != '' ? password : 'Unable to generate password'

        check_password(password)
      else
        puts 'The Length of Password should be greater than equal to 7'
      end

    else
      puts "Check your input of numeric , alphabet and sysmbols length...
   \n alphabets actual length is 26  \n Numerics are 10 \n symbols are 20"
    end
  end
end

puts 'Enter Desired Length of password'
password_length = gets.to_i
puts 'Enter Length of alphabets less than or equal to 26'
aplphabets_length = gets.to_i
puts 'Enter Length of numerical less than or equal to 10'
numerics_length = gets.to_i
puts 'Enter Length of symbols less than or equal to 20'
symbols_length = gets.to_i

pass = PasswordGenerator.new(password_length, aplphabets_length, numerics_length, symbols_length)
pass.generate_password
