
message1 = ["Why did the chicken cross the road?"]
# result1 = Jul qvq gur puvpxra pebff gur ebnq?


# First thought, but this won't work and it unneccesarily complex
def rot13_depricated_1(secret_messages)
  char_ref = ('a'..'z').to_a
  result_arr = []

  secret_messages.chars.each do |c|
    if char_ref.include?(c)
      i = char_ref.find_index(c)
      rot13_i = (i+13) % 26
      result_arr.append(char_ref[rot13_i])
    else
      result_arr.append(c)
    end
  end

  return result_arr.join
end


# Second attempt. Seems to work well. Can we optimize? Beautify?
def rot13_depricated_2(secret_messages)
  char_ref = ('a'..'z').to_a + ('A'..'Z').to_a
  rot13_lower = ('n'..'z').to_a + ('a'..'m').to_a
  rot13 = rot13_lower + rot13_lower.map { |c| c.upcase }
  results = []

  secret_messages.each do |secret_message|
    result = ""
    secret_message.chars.each do |c|
      i = char_ref.find_index(c)
      if i
        result += rot13[i]
      else
        result += c
      end
    end

    results.append(result)
  end  

  return results
end

# tr is a powerful. Map is much better than each because
# it returns the value of each iteration of the block.
def rot13(secret_messages)
  secret_messages.map do |message|
    message.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end 
end


p rot13(message1)


