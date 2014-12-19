class Array

	def linject
		copy = self.dup 
		sum = copy.shift
		copy.each do |item|
		sum = yield sum, item
		end
		sum
	end

end	