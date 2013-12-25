# this function is used to move all odd number to front part of an array and even numbers end.
def test(arr)
	 endix = arr.size-1
	 arr.each_with_index do |v,i|
         if i >= endix
			return
		 end
		 
		 if v % 2 == 0 # met a even
			 # swap this even with the last odd
			 until arr[endix] % 2 == 1 or endix <= i
				endix -= 1
			 end
			 arr[i],arr[endix]=arr[endix],arr[i]
		 end
	 end
end
