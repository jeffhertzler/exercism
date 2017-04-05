# Please implement your solution to hamming in this file
module Hamming
  def self.compute(a, b)
    raise ArgumentError.new unless a.size == b.size
    a.chars.zip(b.chars).count { |a, b| a != b }
  end
end
