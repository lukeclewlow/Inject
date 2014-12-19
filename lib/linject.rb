class Array

	def linject(arg=nil, symbol=false )
		copy = self.dup
		if  arg == nil && symbol == false
			sum = copy.shift
			copy.each do |item|
			sum = yield sum, item
			end
		elsif arg == nil && symbol
			
			puts "HI"
			
		else
			sum = arg
			copy.each do |item|
			sum = yield sum, item
			end
		end	
		sum
	end
end	