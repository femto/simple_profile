
def first_covering_prefix(input)
   raise ArgumentError, "input must be an array" unless input.is_a? Enumerable

   storage = {}
   input.each do |value|
     storage[value] = 1
   end
   size =  storage.size
   covering_storage = {}
   result = 0
   input.each_with_index do |value, index|
     covering_storage[value] = 1
     #because accessing hashmap's size is O(1) time, so the whole is O(N) time
     if covering_storage.size == size
       result = index
       break
     end
   end
  result
end

#puts first_covering_prefix([2,2,1,0,1])
#puts first_covering_prefix([4,3,2,1,0])
