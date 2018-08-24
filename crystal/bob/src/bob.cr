# Please implement your solution to bob in this file
module Bob
  def self.hey(s)
    return "Whoa, chill out!" if yell? s
    return "Sure." if question? s
    return "Fine. Be that way!" if nothing? s
    "Whatever."
  end

  private def self.yell?(s)
    s.upcase == s && s.match /[a-zA-Z]/
  end

  private def self.question?(s)
    s.ends_with? "?"
  end

  private def self.nothing?(s)
    s.strip == ""
  end
end