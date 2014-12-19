require 'linject'
# 
describe Array do
	
	array = [ 2, 3, 4, 5 ]

	context 'with a block' do

		it "should be able to add an array of numbers" do
		expect(array.linject { | sum, item | sum + item } ).to eq(14)
		expect(array.inject { | sum, item | sum + item } ).to eq(14)
		end

		it "can minus numbers" do
		expect(array.linject { | sum, item | sum - item } ).to eq(-10)
		expect(array.inject { | sum, item | sum - item } ).to eq(-10)
		end

		it "can multiply numbers" do
		expect(array.linject { | sum, item | sum * item } ).to eq(120)
		expect(array.inject { | sum, item | sum * item } ).to eq(120)
		end
	end

	context 'with an arguments and a block' do

		xit "can add with a starting point" do
		expect(array.inject(10){ | sum, item | sum + item } ).to eq(24)
		end

	end

	context 'with a symbol' do

		xit "can add numbers" do
			expect(array.inject(:+)).to eq(14)
		end

	end

	context 'with a symbol argument' do

	end

end
