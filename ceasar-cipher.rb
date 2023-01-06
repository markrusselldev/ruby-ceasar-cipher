def ceasar_cipher(string, step)
  charArray = []
  # can use .unpack() or .bytes to turn our letters into ASCII
  string.unpack("C*").map do |char| 
    # pass in spaces and special chars without stepping
    if char.between?(32, 64) || 
        char.between?(91, 96) || 
        char > 122 then
      charArray.push(char)
    else
    charArray.push((char + step < 123 && !(char + step).between?(32, 64) && !(char + step).between?(91, 96))?(char + step):(char + step - 26))
    end
  end
  charArray.pack("C*")
end
puts ceasar_cipher("What a string!", 5)
