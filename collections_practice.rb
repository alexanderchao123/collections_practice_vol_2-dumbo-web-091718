def begins_with_r(array)
  array.each {|word| return false if word[0] != "r"}
  return true
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.each {|word| return word if word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|element| element.is_a? String}
end

def count_elements(array)
  name_count = array.uniq()
  name_count.each {|hash| hash[:count] = 0}

  array.each do |hash1|
    name_count.each do |hash2|
      hash2[:count] += 1 if hash2[:name] == hash1[:name]
    end
  end
  return name_count
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |key|
    key_data = data[0][key[:first_name]]
    merged_array << key.merge(key_data)
  end
  return merged_array
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  return cool_hashes
end

def organize_schools(hash)
  organized = {}
  hash.each do |key, value|
    location = value[:location]
    if organized.has_key?(location)
      organized[location] << key
    else
      organized[location] = [key]
    end
  end
  return organized
end
