

module Enumerable
  
  def my_each
    for i in 0..self.length-1
		yield self[i]
	end
	self
  end

  def my_each_with_index
  	for i in 0..self.length-1
		yield(self[i], self.index(self[i]))
	end
	self
  end

  def my_select
  	result_array = []
  	self.my_each {|i| result_array<< i if yield (i)}
	result_array
  end

  def my_all?
  	elements = 0
  	array_length = self.length
  	self.my_each do |i|
  		if block_given?
      		elements +=1 if yield(i)
      	else
      		elements += 1 if i 
      	end
  	end
  	if elements == array_length
  		return true
  	else
  		return false
  	end
  end

  def my_any?
  	elements = 0
  	array_length = self.length
  	self.my_each do |i|
  		if block_given?
      		elements +=1 if yield(i)
      	else
      		elements += 1 if i 
      	end
  	end
  	if elements > 0
  		return true
  	else
  		return false
  	end
  end

  def my_none?
  	elements = 0
  	array_length = self.length
  	self.my_each do |i|
  		if block_given?
      		elements +=1 if !yield(i)  
      	else
      		elements += 1 if !i      			
      	end
  	end
  	if elements == array_length
  		return true
  	else
  		return false
  	end
  end

  def my_count(arg=nil)
  	counter = 0
  	self.my_each do |x|
  		if block_given?
  			counter +=1 if yield(x)
  			elsif arg != nil
			counter +=1 if arg == x
		else			
  		counter += 1
  		end
  	end
  	counter
  end

  def my_map(&proc)
  	new_array = []
  	if proc
	  	self.my_each {|x| new_array<< proc.call(x)}
  	else
  		self.my_each {|x| new_array<< yield(x)}
  	end
  	new_array
  end

  def my_inject(arg=nil)

  	if arg != nil
  		memo = arg
	  	self.my_each do |i|
	  			memo = yield(memo, i)
	  	end
	else
		self.my_each do |i|
			if i == self[0]	
				memo = self[0]
			else
		  		memo = yield(memo, i)
		  	end
	  	end
	end
  	return memo
  end
end

  def multiply_els(array)
	array.my_inject do |product, i|
	product*i
	end
  end

multiply_els([2,4,5])



