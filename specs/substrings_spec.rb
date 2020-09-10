require '../lib/substrings.rb'

## This exercise is about Substrings.
## A substring is a string that exists within another string.
## For example, 'late' is a substring of 'chocolate'.
## Every letter inside 'chocolate' is also a substring of 'chocolate': 'c', 'h', 'o', 'c', 'o', 'l', 'a', 't', 'e' 
## Your task is to create a function that takes in two parameters: a string and a dictionary, which is an array of strings.
## The function should return a hash, in which each key is a substring from the array and its value is the amount of times that substring appears in the string.
## For example, considering the inputs 'chocolate' and ["cola", "late"], the function should return a hash like this: {"cola": 1, "late": 1}


describe 'substrings' do 

	before do
	       @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]	
	end

	it 'counts intances of a string' do 
		expect(substrings('horn', @dictionary)).to eql({"horn" => 1})
	end

	xit 'counts instances of substrings in a string' do 
		expect(substrings('below', @dictionary)).to  eql({"below" => 1, "low" => 1})
	end

	xit 'works with multiple words' do 
		expect(substrings("Howdy partner, sit down! How's it going?", @dictionary)).to eql({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
	end

	xit 'counts multiple ocurrences in a single word' do 
		expect(substrings('nnnnnnnnnnnnn', ['n'])).to eql({"n" => 13})
	end

end
