require 'byebug'	
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

		it "can add with a starting point" do
		expect(array.linject(10){ | sum, item | sum + item } ).to eq(24)
		expect(array.inject(10){ | sum, item | sum + item } ).to eq(24)
		end

		it "can minus with a starting point" do
		expect(array.linject(10){ | sum, item | sum - item } ).to eq(-4)
		expect(array.inject(10){ | sum, item | sum - item } ).to eq(-4)
		end

		it "can multiply with a starting point" do
		expect(array.linject(10){ | sum, item | sum * item } ).to eq(1200)
		expect(array.inject(10){ | sum, item | sum * item } ).to eq(1200)
		end

	end

	context 'with a symbol' do

		it "can add numbers" do
			expect(array.linject(:+)).to eq(14)
			expect(array.inject(:+)).to eq(14)
		end

		it "can minus numbers" do
			expect(array.linject(:-)).to eq(-10)
			expect(array.inject(:-)).to eq(-10)
		end

		it "can multiply numbers" do
			expect(array.linject(:*)).to eq(120)
			expect(array.inject(:*)).to eq(120)
		end

	end

	context 'with a symbol argument' do

		it "can add numbers" do
			expect(array.linject(10, :+)).to eq(24)
			expect(array.inject(10, :+)).to eq(24)
		end


	end

end
