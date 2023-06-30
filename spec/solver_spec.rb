describe Solver do
    before :each do
        @solve = Solver.new
    end

    context 'when solver class is initialize' do
        it 'will return factorial of n' do
            @result = solve.factorial (3)
            @expected_result = 6
            expect(@result).to eq(@expected_result)
        end
        it 'will return one if the argument is zero' do
            @result = solve.factorial(0)
            @expected_result = 1
            expect(@result).to eq(@expected_result)
    end
        it 'will return error if arguement is negative' do
            expect{solve.factorial(-1)}.to raise_error('you entered a negative number');
    end
    context 'test reverse method in solver class' do
        it 'returns reversed string' do
          reversed_string = solve.reverse('artur')
          expected_str = 'rutra'
          expect(reversed_string).to eq(expected_str)
        end
      end

end

