def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contains_a(array)
  array.select do |word|
    word.include?("a")
  end
end
