# your code goes here
array = ["rat", "fang", true, "rat"]
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end


def contain_a(array)
	array.find_all {|word| word.include?("a")}
end


def first_wa(array)
  array.find {|prefix| prefix.match(/^wa/)}
end

def remove_non_strings(array)
	array.delete_if {|string| string.class != String}
end


def count_elements(array)
  new_array = []
  count = 0 
  array.each do |old_hash|
    old_hash[:count] = 0
    name = old_hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        old_hash[:count] += 1 
      end 
    end
  end.uniq 
end

# def merge_data(keys, data)
#   if :keys[:first_name] == :data 
# end 

def find_cool(cool)
  if cool.include?("cool")
    cool.to_hash
  end
end 
  