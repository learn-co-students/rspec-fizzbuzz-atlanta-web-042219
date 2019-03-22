

require 'benchmark'
require 'pry'

class Fizzbuzz
  def initialize(number)
    @number = number
  end

  def self.count(number)
    count = new(number)
    count.output_data[count.selector]
  end

  def self.count_if(number)
    count = new(number)
    count.output_if
  end

  def output_if
    result = 'Fizz' if @number % 3 == 0
    result = 'Buzz' if @number % 5 == 0         
    result = 'Fizzbuzz' if @number % 15 == 0
    result 
  end

  def output_data
    { "3" => "Fizz", 
      "5" => "Buzz",
      "15" => "Fizzbuzz" }
  end

  def selector
    output_data.keys.map { |k| k.to_i }.select do |k| 
      @number % k == 0 
    end.last
  end
end

Benchmark.bm(15) do |x|
  x.report("if") { 
    10000.times do 
      Fizzbuzz.count_if(Random.rand(100))
    end
  }

  x.report("hash_select") { 
    10000.times do 
      Fizzbuzz.count(Random.rand(100))
    end
  }
end