require_relative 'solver'

describe Solver do
    
    before(:each) do
        @solver = Solver.new
    end

    it 'throw an error if input is negetive number' do
        expect(@solver.factorial(-1)).to raise_error('input cant be less than zero')
    end

    it 'input is zero' do
        expect(@solver.factorial(0)).to eql 1
    end

    it 'return factorial' do
        expect(@solver.factorial(5)).to eql 120
    end

    it 'return reverse string' do
        expect(@solver.reverse_string('hello')).to eql 'olleh'
    end

    it 'return reverse string' do
        expect(@solver.reverse_string('hello')).to eql 'olleh'
    end

    it 'input devisible by 3 return fizz' do
        expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end
    it 'input devisible by 5 return buzz' do
        expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end
    it 'input devisible by 3 and 5 return fizzbuzz' do
        expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'input devisible by 3 and 5 return input' do
        expect(@solver.fizzbuzz(7)).to eql "7"
    end
    
end