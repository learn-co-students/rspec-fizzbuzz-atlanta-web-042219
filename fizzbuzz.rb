# Don't forget! This file needs to be 'required' in its spec file
# See README.md for instructions on how to do this

#  returns "Fizz" when the number is divisible by 3
#  returns "Buzz" when the number is divisible by 5
#  returns "FizzBuzz" when the number is divisible by 3 and 5
#  returns nil when the number is not divisible by 3 or 5
def fizzbuzz(int)
  if int % 3 == 0 && int % 5 == 0 # if the number is divisible by 3 and 5
    "FizzBuzz" # Go fizzbuzz
  elsif int % 5 == 0 # if the number int is divisible by 5
    "Buzz" # Go buzz
  elsif int % 3 == 0 # if the number int is divisible by 3
  "Fizz" # Go fizz
  end
end
