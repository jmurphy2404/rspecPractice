require 'rspec/autorun'

class Factorial
	def factorial_of(num)
		(1..num).inject(:*)
	end
end

describe Factorial do
  it "finds the factorial of 5"	do
  	calculator = Factorial.new
expect(calculator.factorial_of(5)).to eq(120)
  end
end

