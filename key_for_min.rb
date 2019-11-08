# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  names_arr = name_hash.to_a
  lowest_value = names_arr[0][1]
  lowest_key = names_arr[0][0]
  p lowest_value
  
  outer_count = 0
  while outer_count < names_arr.length do
    inner_count = 0
      while inner_count < names_arr[outer_count].length do
        lowest_value = names_arr[outer_count][0] if names_arr[outer_count][1] < lowest_value
        inner_count += 1
      end
    outer_count += 1
  end
  lowest_value
end