# Please implement your solution to raindrops in this file
module Raindrops
  def self.drops(i)
    String.build do |s|
      s << "Pling" if i % 3 == 0
      s << "Plang" if i % 5 == 0
      s << "Plong" if i % 7 == 0
      s << i.to_s if s.empty?
    end
  end
end
