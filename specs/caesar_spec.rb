require '../lib/caesar.rb'

## This exercise is 'Caesar Cipher'.
## Your task is to create a function that takes in two parameters: a string and an integer.
## The function should return a string, in which each letter from the original string has been replaced by a letter shifted forward in the alphabet by the amount specified in the second parameter.
## For example, passing in 'ABCD' and 2 should return the string 'CDEF'
## The function should be case-sensitive, meaning that capitalized letters should stay capitalized.
## The function should wrap letters; meaning it should go back to the beginning if there aren't any letters left to shift to.
## For example, if "Z" and 1 are passed, it should return "A".
## The function should not alter any strings that are not letters.

describe 'caesar cipher' do 
	it 'works with single letters' do 
		expect(caesar('A', 1)).to eql('B')
	end
	
	xit 'works with words' do 
		expect(caesar('Aaa', 1)).to eql('Bbb')
	end

  xit 'works with phrases' do 
		expect(caesar('Hello, World!', 5)).to eql('Mjqqt, Btwqi!')
	end 

	xit 'works with negative shift' do 
		expect(caesar('Mjqqt, Btwqi!', -5)).to eql('Hello, World!')
	end

	xit 'wraps' do 
		expect(caesar('Z', 1)).to eql('A')
	end

	xit 'works with large shift factors' do 
		expect(caesar('Hello, World!', 75)).to eql('Ebiil, Tloia!')
	end
 
	xit 'works with large negative shift factors' do 
		expect(caesar('Hello, World!', -62)).to eql('Xubbe, Mehbt!')
	end 

	xit 'does not modify non-letter strings' do 
		expect(caesar('!&%35Ab Cd', 5)).to eql('!&%35Fg Hi')
	end


end
