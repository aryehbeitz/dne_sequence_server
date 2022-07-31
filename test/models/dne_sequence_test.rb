require 'rails_helper'

RSpec.describe DneSequence, type: :model do
  let(:input_array) { [1, 2, 3] }

  it 'is valid with valid attributes' do
    expect(described_class.new(input_array)).to be_valid
  end

  it 'is invalid without input_array' do
    input_array = nil
    expect(described_class.new(input_array)).to_not be_valid
  end

  it 'is invalid with input_array of length < 3' do
    input_array = [1, 2]
    expect(described_class.new(input_array)).to_not be_valid
  end

  it 'when has dne sequences, returns them' do
    input_array = [4, 1, 7, 8, 7, 2]
    expect(described_class.new(input_array).calc_sequences).to eq([[4, 8, 7], [1, 7, 2], [1, 8, 7], [1, 8, 2]])
  end

  it 'when does not have dne sequences, return empty array' do
    input_array = [1, 2, 3, 7]
    expect(described_class.new(input_array).calc_sequences).to eq([])
  end

end