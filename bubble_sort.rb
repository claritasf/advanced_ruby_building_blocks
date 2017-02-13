
def bubble_sort(array)
	

	last_sort = array.length - 1
	swapped = true

		while swapped == true
			swapped = false
			array.each_with_index do |v, i|
				if i < last_sort
					if array[i] > array[i+1]
						array[i], array [i+1] = array[i+1], array[i]
						swapped = true

					end
				end
			end
      last_sort -=1
		end
    print array
end



bubble_sort([4,3,78,2,0,2])


def bubble_sort_by(array)
	array_length = array.length
  swapped = true

	while swapped == true
    swapped = false

		array.each_with_index do |v, i|
			if i < array_length - 1
				left_word = array[i]
				right_word = array[i+1] 
				if yield(left_word, right_word) > 0 
					array[i], array [i+1] = array[i+1], array[i]
          swapped = true
				end
			end
		end
	end
	print array
end


bubble_sort_by(["hi","hello","hey", "h", "happiness", "happy"]) do |left, right|
	left.length - right.length
    end






