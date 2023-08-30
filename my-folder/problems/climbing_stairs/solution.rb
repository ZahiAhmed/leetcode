# @param {Integer} n
# @return {Integer}
def climb_stairs(n)

#longest way is always taking 1 step n times
# each new way can be done another way in reverse
# recursively solve: 
    #base case if n = 0
    #create array
    # two cases
    # add 1 step and call function with n-1
    # add 2 step and call fuinction with n-2
    # store recursive return into an array

     return 1 if n == 1
 
     first   = 1
     second  = 2
 
     (3..n).each do |i|
         third   = first + second
         first   = second
         second  = third
     end
     
     return second 
end