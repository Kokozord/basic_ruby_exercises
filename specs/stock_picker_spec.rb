require '../lib/stock_picker.rb'

## In this exercise, your task is to create a function that takes in an array of numbers and returns an array with two values.
## In that array, the first value should correspond to the best "day" to buy a stock, and the second should correspond to the best "day" to sell it.
## For example, consider the input [1, 5, 10, 8]
## In this case, the best day to buy would be day 0, which is the start of the array with a value of 1, and the best day to sell would be day 22, which is the third element in the array with a value of 10.
## The return value should then be [0, 2]
## Remember that arrays start at 0 and so days in this case also start at 0.
## You MUST buy before you can sell.
## Pay attention to edge cases caused by this rule, such as when the best day to sell is the first one, and when the best day to buy is the last one.

describe 'stock_picker'  do

	it "correctly returns the best days to buy and sell in" do 
		expect(stock_picker([5, 2, 6, 10, 2, 9, 4])).to eql([1, 3])
	end 

	xit "returns the best days even when highest day is at the beginning" do 
		expect(stock_picker([99, 12, 7, 19, 16, 14, 20, 15])).to eql([2, 6])
	end

	xit "returns the best days even when the lowest day is at the end" do	
		expect(stock_picker([13, 2, 10, 15, 7, 11, 18, 21, 1])).to eql([1, 7])
	end
end
