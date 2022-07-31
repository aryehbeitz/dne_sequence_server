class DneSequence
  include ActiveModel::Model
  attr_accessor :input_array, :dne_sequences_result, :len

  validates :input_array, presence: true
  validates_length_of :input_array, minimum: 3

  def initialize(input_array)
    @input_array = input_array
    @dne_sequences_result = []
    @len = input_array&.length
  end

  def calc_sequences
    (0..len-3).each do |first_item_index|
      first_item = input_array[first_item_index]
      next unless first_item

      (first_item_index+1..len-2).each do |second_item_index|
        second_item = input_array[second_item_index]
        next unless second_item

        (second_item_index+1..len-1).each do |third_item_index|
          third_item = input_array[third_item_index]
          next unless third_item

          if first_item < third_item and third_item < second_item
            dne_sequences_result.push [first_item, second_item, third_item]
          end
        end
      end
    end

    dne_sequences_result.uniq
  end
end
