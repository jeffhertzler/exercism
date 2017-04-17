# Please implement your solution to difference-of-squares in this file
module Squares
  def self.square_of_sum(i)
    (1..i).sum ** 2
  end

  def self.sum_of_squares(i)
    (1..i).map(&.** 2).sum
  end

  def self.difference_of_squares(i)
    square_of_sum(i) - sum_of_squares(i)
  end
end
