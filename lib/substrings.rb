def substrings(string, dictionary)
	strings = {}
	dictionary.each {|w| w.downcase!}
	string.downcase!
	dictionary.each do |word|
		if string.include? word
			strings[word] = string.scan(word).length
		end
	end
	strings
end
