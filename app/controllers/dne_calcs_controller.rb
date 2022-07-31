class DneCalcsController < ApplicationController
  def dne_calc
    dne_sequence = DneSequence.new safe_params
    sequences = dne_sequence.calc_sequences
    render json: { sequences: sequences, is_sequence: sequences.length > 0 }
  end

  def safe_params
    params.require(:seq)
  end
end
