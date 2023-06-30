describe Solver do
  before :each do
    @solve = Solver.new
  end

  context 'when solver class is initialize' do
    it 'will return factorial of n' do
      @result = solve.factorial(3)
      @expected_result = 6
      expect(@result).to eq(@expected_result)
    end
    it 'will return one if the argument is zero' do
      @result = solve.factorial(0)
      @expected_result = 1
      expect(@result).to eq(@expected_result)
    end
    it 'will return error if arguement is negative' do
      expect { solve.factorial(-1) }.to raise_error('you entered a negative number')
    end
    context 'test reverse method in solver class' do
      it 'returns reversed string' do
        @reversed_string = solve.reverse('hello')
        @expected_str = 'olleh'
        expect(@reversed_string).to eq(@expected_str)
      end
    end
    context 'test fizzbuzz n integer N, and returns a string' do
      it 'returns "fizz" if the parameter given divisible by 3' do
        answer = solve.fizzbuzz(9)
        expected_answer = 'fizz'
        expect(answer).to eq(expected_answer)
      end
      it 'returns "buzz" if the parameter given is divisible by 5' do
        answer = solve.fizzbuzz(10)
        expected_answer = 'buzz'
        expect(answer).to eq(expected_answer)
      end
      it 'returns "fizzbuzz" if the parameter given is divisible by 3 and 5' do
        answer = solve.fizzbuzz(15)
        expected_answer = 'fizzbuzz'
        expect(answer).to eq(expected_answer)
      end
      it 'returns the given number if the parameter given is not divisible by 3 or 5' do
        answer = solve.fizzbuzz(7)
        expected_answer = '7'
        expect(answer).to eq(expected_answer)
      end
    end
  end
end
