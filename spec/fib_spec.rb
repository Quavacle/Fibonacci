require 'spec_helper'

RSpec.describe Fibonacci, type: :model do 
  describe 'iterative function should work' do
    it 'should return the 3rd value of Fibonacci sequence' do
      expect(Fibonacci.iterative(3)).to eq(2)
    end
    it 'should return the 10th value of the Fibonacci sequence' do
      expect(Fibonacci.iterative(10)).to eq(55)
    end
  end

  describe 'recursive function should work' do
    it 'should return the 3rd value of Fibonacci sequence' do
      expect(Fibonacci.recursive(3)).to eq(2)
    end
    it 'should return the 10th value of the Fibonacci sequence' do
     expect(Fibonacci.recursive(10)).to eq(55)
   end
 end
end