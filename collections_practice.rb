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

def merge_data(hash1, hash2)
  merged_data = []
  merged_data << hash1[:keys][0].merge(hash2[:data][0].values[0])
  merged_data << hash1[:keys][1].merge(hash2[:data][0].values[1])
  return merged_data
 end
end

def find_cool(hash)
  hash.select {|x| x[:temperature] == "cool"}
end

def organize_schools(hash)
  hash.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end
