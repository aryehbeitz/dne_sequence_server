require 'rails_helper'

RSpec.describe DneSequence, :type => :model do
  it "is valid with valid attributes" do
    expect(DneSequence.new([1,2,3])).to be_valid
  end
end