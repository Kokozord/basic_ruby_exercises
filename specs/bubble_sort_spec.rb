require '../lib/bubble_sort.rb'

## This is the Bubble Sort exercise.
## Your task is to create a method that implements the bubble sort algorithm.
## You can find details about bubble sort here: https://www.youtube.com/watch?v=8Kp-8OGwphY
## And here: http://en.wikipedia.org/wiki/Bubble_sort
## In short, the bubble sort algorithm dictates that you check each element by comparing it to the next element in the array, and swap their places in the array if the current element is larger than the next element.
## For example, with an array [2, 1], you would compare 2 with 1, and swap them because 2 is larger than 1, giving you a sorted array.
## The process is repeated until the array is sorted.

describe 'bubble sort' do 
		
		it 'sorts an array' do 
			expect(bubble_sort([9, 2, 3, 1, 15, 10, 11])).to eql([1, 2, 3, 9, 10, 11, 15])
		end

		xit 'does not alter a sorted array' do 
			expect(bubble_sort([1, 2, 3, 4, 5, 6, 7])).to eql([1, 2, 3, 4, 5, 6, 7])
		end

		xit 'correctly sorts an array with duplicate values' do 
			expect(bubble_sort([2, 2, 1, 1, 5, 5, 9, 6, 7, 6, 7, 9])).to eql([1, 1, 2, 2, 5, 5, 6, 6, 7, 7, 9, 9])
		end

		xit 'works with negative numbers' do 
			expect(bubble_sort([-10, 1, -12, 3, -1, 13241234, -56456])).to eql([-56456, -12, -10, -1, 1, 3, 13241234])
		end
end
