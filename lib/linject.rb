require 'byebug'

class Array

	def linject(arg=nil, block = nil)
		copy=self.dup
		sum  = (arg.is_a? Integer) ? arg : copy.shift
		if arg.is_a? Integer
				copy.each { |item|	sum = sum.send(block, item) } if block.is_a? Symbol
				copy.each { |item| sum = yield sum, item } unless block.is_a? Symbol
		end
		copy.each { |item|	sum = sum.send(arg, item) } if arg.is_a? Symbol
		copy.each { |item|	sum = yield sum, item } unless arg
		return sum
	end
end	