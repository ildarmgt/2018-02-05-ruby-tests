# Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it

def part1(inString)
  inString + ' Only in America'
end
puts part1('bananas')

# Create a function that takes two arguments, adds them together and returns their value split in 3

def part2(in1, in2)
  (in1.to_f + in2.to_f)/3
end
puts part2(2,3)

# Create a hash that holds information about you. Include firstName, lastName, birthday and an array of interests. Print each property out to the terminal.

part3 = {
  'firstName' => 'ILDAR',
  'lastName' => 'PRIME',
  'birthday' => '08/15',
  'interests' => ['candy', 'water']
}
puts part3

#  Declare a function that, depending upon which virtual "door" was entered, tells the user they've received a different "prize" in an alert. Try running it after it has been declared a few times with each door option

def part4(inDoor)
  if 1
    puts 'You got eaten'
  elsif 2
    puts 'You ate strangers'
  elsif 3
    puts 'You got a billion'
  else
    puts 'You got nothing'
  end
end

part4(3)

# Create an array that contains various names. Use a loop to print out the names, followed by 'is my friend'. Like so: Jake is my friend John is my friend Samantha is my friend Billy is my friend

part5 = ['Alice', 'Bob', 'Carl', 'Doug']
for i in part5
  puts part5[i.to_i]
end

# Create a function to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max function.
#

def part6(in_array)
  themax = in_array[2]
  in_array.each do |item|
    if item > themax
      themax = item
    end
  end
  themax
end

temp_array = [100,10,-1000, 500]
puts part6(temp_array)

# Create a function that takes two arguments - both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values. For example, when these two arrays are supplied as arguments:
#
#     [:toyota, :tesla]
#     ["Prius", "Model S"]
# they should return a hash like so:
#
#     {toyota: "Prius", tesla: "Model S"}


def part7(in1, in2)
  temp = {}
  for i in 0..in1.length-1
    temp[in1[i]] = in2[i]
  end
  return temp
end

puts part7([:toyota, :tesla], ["Prius", "Model S"])

# Write a program that prints the numbers from 1 to 100, except:
#
# for multiples of three print "Fizz" instead of the number
# for multiples of five print "Buzz"
# Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

for i in 1..100
  if ((i % 3 == 0) && !(i % 5 == 0))
    print 'Fizz' + ' '
  elsif (!(i % 3 == 0) && (i % 5 == 0))
    print 'Buzz' + ' '
  elsif (!(i % 3 == 0) && !(i % 5 == 0))
    print 'FizzBuzz' + ' '
  else
    print i.to_s + ' '
  end
end
puts ' '

#  Create a while loop that "sings" the classic song "99 Bottles of Root Beer on the Wall"
#  . The code it outputs to the console should look similar to this:
#  •   "99 bottles of root beer on the wall, 99 bottles of root beer...take one down, pass it around 98 bottles of root beer on the wall, 98 bottles of root beer on the wall, 98 bottles of root beer...take one down, pass it around 97 bottles of root beer on the wall," etc., all the way to 0 bottles.

99.step(1, -1) do |i|

  if i > 2
    print i.to_s + ' bottles of root beer on the wall, ' + i.to_s + ' bottles of root beer...take one down, pass it around, '
    print (i-1).to_s + ' bottles of root beer on the wall, '
  elsif i == 2
    print i.to_s + ' bottles of root beer on the wall, ' + i.to_s + ' bottles of root beer...take one down, pass it around, '
    print (i-1).to_s + ' bottle of root beer on the wall, '
  elsif i == 1
    print i.to_s + ' bottle of root beer on the wall, ' + i.to_s + ' bottle of root beer...take one down, pass it around, '
    print 'no more bottles of root beer on the wall!'
  end

end
puts ' '
