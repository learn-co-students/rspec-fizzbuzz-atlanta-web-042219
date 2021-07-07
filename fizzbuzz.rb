# Don't forget! This file needs to be 'required' in its spec file
# See README.md for instructions on how to do this
# require 'pry'

def fizzbuzz(number)
  if number % 3 == 0 && number % 5 == 0
    return "FizzBuzz"
  elsif number % 3 == 0
    return "Fizz"
  elsif number % 5 == 0
    return "Buzz"
  else
    return nil


  # else number % 3 == 0 && number % 5 == 0 == nil

end
end
