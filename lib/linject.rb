require 'byebug'

class Array

	def linject(arg=nil, &block)
		copy=self.dup
			if arg.is_a? Integer
				sum = arg
				copy.each do |item|
				sum = yield sum, item
				end		
			elsif arg.is_a? Symbol
				sum = copy.shift
				arg1 = arg.to_proc
				copy.each do |item|
				sum = arg1.call(sum, item)
				end
			else sum = copy.shift
					copy.each do |item|
					sum = yield sum, item
					end
			end
			sum
	end













	# def linject(*arg)
	# 	copy = self.dup
	# 		if arg.is_a? Integer
	# 				sum = copy.shift
	# 				copy.each do |item|
	# 				sum = yield sum, item
	# 				end
	# 		elsif arg.is_a? Symbol
	# 				arg1 = arg.to_proc
	# 				# byebug
	# 				self.linject(arg1) 
	# 		else sum = arg 
	# 				copy.each do |item|
	# 				sum = yield sum, item
	# 				end		
	# 		end	
	# 		sum
	# end
	
end	


				