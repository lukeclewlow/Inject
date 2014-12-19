class Array

	def linject(x =nil)
		copy = self.dup 
		sum = copy.shift
		copy.each do |item|
		sum = yield sum, item
		end
		sum
	end

end	