def caesar_cipher(string, shift)
  res_arr = []
  string.each_codepoint do |c|
    # Only process if alphabet char (both cases)
    unless c < 65 || (c > 90 && c < 97) || c > 122
      ascii_range_low = if c < 97 then 'A'.ord else 'a'.ord end
      ascii_range_high = if c < 97 then 'Z'.ord else 'z'.ord end
      wrapped_ascii = ((c + shift) - ascii_range_low) % (ascii_range_high - ascii_range_low + 1) + ascii_range_low
      res_arr.push(wrapped_ascii.chr)
    else
      res_arr.push(c.chr)
    end
  end
  puts res_arr.join
end

caesar_cipher("What a string!", 5)