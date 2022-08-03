#Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

#Return the running sum of nums.
#Example 1:
#Input: nums = [1,2,3,4]
#Output: [1,3,6,10]
#Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
#Example 2:
#Input: nums = [1,1,1,1,1]
#Output: [1,2,3,4,5]
#Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].

# fastest solution 
def running_sum(nums)
    lastval = 0
    i = 0
    results = []
    nums.each {|n|
        val = n+lastval
        results[i]= val
        lastval += n
        i = i+1
        
    }
    
    results 
end

#slower solution 
def running_sum(nums)
    lastval = 0
   
    results = []
    nums.each_with_index {|n , i|
        
        val = n+lastval
        results[i]= val
        lastval += n
        
        
    }
    
    results 
end