puts 'Hello Ibrahim'
x = 2

# if and else statement
if x < 4
  puts 'its small'
else
  puts 'its Big'
end

# Use Unless
unless x < 4
  puts('its small')
else
  puts('its Big')
end

# Switch Statement

a = 2
case a
when 1
    puts "One"
when 2
    puts "Two"
when 3
    puts "Three"
end

# until loop

a = 0
until a > 10
    puts "#{a}"
    a +=2
end

x = 15
until x <= 10
  puts x
  x -= 2
end

#Range

b = (1...22).to_a
puts b

# for loop

for i in (1..22)
  print i
end

# Arrays

arr1 = [1,2,3,4,6,1,23,90]
puts arr1
arr1 << 100
puts arr1
arr1.push(8)
puts arr1
arr1.pop
puts arr1
arr1.insert(0,0)
puts arr1
arr1.delete_at(2)
puts arr1

# reverse Array
revArray = arr1.reverse
print revArray

# reverse Array with '!'
print arr1
arr1.reverse!
print(arr1)

#Hashes
puts ' '
ages = { David: 28, Amy: 19, Rob: 42 }
puts ages

# Iterator each

arr2 = [1,2,3,4,6,1,23,90]
arr2.each do |x|
  puts x
end

arr2.each { |x| print x }

# Iterator times

10.times { print 1 }

# Letters Frequency counter
puts ' '
text = 'This is Ibrahim,I love art work, by profession, I am Software Engineer'
text.downcase!
puts text
freqs = {}
freqs.default = 0
text.each_char { |char| freqs[char] += 1 }
# print freqs
('a'..'z').each { |x| puts "#{x} : #{freqs[x]}" }

# Class & Object

class Person
  @fname
  @lname
  def initialize(fn , ln)
    @fname = fn
    @lname = ln
    puts "Hello from initializer "
  end
  def get_name
    puts "#{@fname} #{@lname}"
  end
end

p1 = Person.new("ibrahim","azeem")
p1.get_name

