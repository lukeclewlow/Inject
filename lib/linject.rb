class Array

	def linject(x=nil)
		if x == nil
			copy = self.dup 
			sum = copy.shift
			copy.each do |item|
			sum = yield sum, item if block_given?
			end
			sum
		else
			copy = self.dup 
			sum = x
			copy.each do |item|
			sum = yield sum, item if block_given?
			end
			sum
		end	
	end
end	