def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end