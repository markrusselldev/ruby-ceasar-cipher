def ceasar_cipher(string, step)
  charArray = []
  # can use .unpack() or .bytes to turn our letters into ASCII
  string.unpack("C*").map do |char| 
    # pass in spaces and special chars without stepping
    if char.between?(32, 64) || char.between?(91, 96) || char > 122 then
      charArray.push(char)
    else
    # step normally if stepping lands on a letter, wrap if not
    charArray.push(((char + step).between?(65, 90) || (char + step).between?(97, 122))?(char + step):(char + step - 26))
    end
  end
  # turn ASCII back into a string of letters
  charArray.pack("C*")
end
puts ceasar_cipher("What a string!", 5)
