

def count_letters(letters)
  h = Hash.new(0)
  new_string = letters.delete(' ')
  array_of_strings = new_string.split('')
  no_of_elements = array_of_strings.count
  array_of_strings.each do | letter |
    h[letter] = h[letter]+1
    end
   return h
end

puts count_letters("This is Nasir")