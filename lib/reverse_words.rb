# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length < 2

  i = 0
  while i < my_words.length
    index = i

    while my_words[index] != " " && my_words[index] != nil
      index += 1
    end

    unless index == i
      a = i
      b = index - 1

      while a < b
        temp_letter = my_words[a]
        my_words[a] = my_words[b]
        my_words[b] = temp_letter
        a += 1
        b -= 1
      end

    end

    i = index + 1
  end
end
