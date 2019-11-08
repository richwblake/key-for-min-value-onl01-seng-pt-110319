# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.empty?
  names_arr = name_hash.to_a
  lowest_value = names_arr[0][1]
  lowest_key = names_arr[0][0]
  p lowest_value
  p lowest_key
  
  outer_count = 0
  while outer_count < names_arr.length do
    inner_count = 0
      while inner_count < names_arr[outer_count].length do
        if names_arr[outer_count][1] < lowest_value
          lowest_key = names_arr[outer_count][0] 
          lowest_value = names_arr[outer_count][1]
        end
        inner_count += 1
      end
    outer_count += 1
  end
  lowest_key
end