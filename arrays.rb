### SETUP
require 'rspec'
 
RSpec.configure do |config|
  config.color = true
end
 
### LOGIC (fix me)
 
# Returns the average of all the numbers in the array
def average(numbers) #default empty array does not work when nil passed in
  sum = 0
  if numbers == nil
    numbers = []
  end
  numbers.each do |n|
    sum += n.to_f
  end
  if numbers.size >= 1
    sum / numbers.size
  else
    nil
  end
end
 
### TEST CODE (don't touch me)
 
describe '#average' do
  it 'returns nil for empty array' do
    result = average([])
    expect(result).to be_nil
  end
  it 'returns nil when nil is passed in' do
    result = average(nil)
    expect(result).to be_nil
  end
  it 'returns 4 for 3,4,5' do
    result = average([3, 4, 5])
    expect(result).to eq(4)
  end
  it 'can handle numbers represented as strings' do
    result = average([10, '20', 30])
    expect(result).to eq(20)
  end
  it 'can handle floats' do
    result = average([1.0, 1.5, 2.0])
    expect(result).to eq(1.5)
  end
end