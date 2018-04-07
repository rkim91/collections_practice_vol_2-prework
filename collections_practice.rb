def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if { |x| !(x.is_a? String) }
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(v1, v2)
  v1.map.with_index {|v, i| v2[i].merge(v)}
end

def find_cool(hash)
  # cool = hash["employee"].select {|k| k["level"] == "2"}
  return hash
end
