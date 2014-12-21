class Array

	def linject(arg=nil)
		copy = self.dup
		if arg == nil
			sum = copy.shift
			copy.each do |item|
			sum = yield sum, item
			end
		else
			sum = arg
			copy.each do |item|
			sum = yield sum, item
			end
		end	
		sum
	end
	

	# def llinject(arg=nil)
	# 	if arg[0].is_a? Symbol
	# 		symbol = arg.to_proc
	# 		sum = copy.shift
	# 		copy.each do |item|
	# 		sum = yield sum, item

	# 		end
	# 	else
	# 		puts "WHAT"
	# 	end
	# end

end	