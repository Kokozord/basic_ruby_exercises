def caesar(string, shift)
	shifted_string = ''
	string.chars.each do |char|
		if !char.ord.between?(65, 90) && !char.ord.between?(97, 122)
			shifted_string += char 
		elsif char.ord.between?(65, 90) 
			shifted_string += ((char.ord - 65 + shift) % 26 + 65).chr
		else 
			shifted_string += ((char.ord - 97 + shift) % 26 + 97).chr
		end
	end
	shifted_string	
end
