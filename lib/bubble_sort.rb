def bubble_sort(array)
	sorted = false 
	while !sorted do
		sorted = true 
		array.each_with_index do |ele, i|
			break if i+1 >= array.length
			if ele > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				sorted = false 
			end
		end	 
	end 
	array
end 
