class DneSequence
  # include ActiveModel::Model
  # attr_accessor :input_array, :dne_sequences_result
  #
  # validates :input_array, presence: true

  def calc_sequences
    input_array = [4,1,7,8,7,2]
    dne_sequences_result = []
    len = input_array.length
    (0..len).each { |first_item_index|
      first_item = input_array[first_item_index]
      next unless first_item
      (first_item_index..len).each { |second_item_index|
        second_item = input_array[second_item_index]
        next unless second_item
        (second_item_index..len).each { |third_item_index|
          third_item = input_array[third_item_index]
          next unless third_item
          if first_item < third_item and third_item < second_item
            dne_sequences_result |= [[first_item, second_item, third_item]]
          end
        }
      }
    }
    p dne_sequences_result
  end
end
DneSequence.new.calc_sequences