require 'rspec/autorun'

class Factorial
	def factorial_of(num)
		(1..num).inject(:*)
	end
end

# non let version of factorial
# describe Factorial do
#   it "finds the factorial of 5"	do
#   	calculator = Factorial.new
# expect(calculator.factorial_of(5)).to eq(120)
#   end
# end

# using let (or let! to create object immediately)
# allows calculator to be reused in tests in this describe
describe Factorial do
	let!(:calculator) {Factorial.new}

	it "finds the factorial of 5" do
		expect(calculator.factorial_of(5)).to eq(120)
  end
end