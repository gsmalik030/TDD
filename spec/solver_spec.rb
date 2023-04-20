require_relative '../solver'

describe Solver do
  before(:each) { @solver = Solver.new }

  describe '#factorial' do
    it 'throw an error if input is negative number' do
      expect(@solver.factorial(-1)).to raise_error(
        'input can not be negative',
        RuntimeError,
      )
    end

    it 'input is zero should return 1' do
      expect(@solver.factorial(0)).to eql 1
    end

    it 'positive input should return factorial' do
      expect(@solver.factorial(5)).to eql 120
    end
  end

  describe '#reverse_string' do
    it 'return reversed string' do
      expect(@solver.reverse_string('hello')).to eql 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'input divisible by 3 return fizz' do
      expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end
    it 'input divisible by 5 return buzz' do
      expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end
    it 'input divisible by 3 and 5 return fizzbuzz' do
      expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'input any other number returns number as string' do
      expect(@solver.fizzbuzz(7)).to eql '7'
      expect(@solver.fizzbuzz(7).class).to eql String
    end
  end
end
