# Please implement your solution to leap in this file
module Year
  def self.leap?(year)
    year % 400 == 0 || year % 100 != 0 && year % 4 == 0
  end
end