--[[ 
 returns a table of consisting of each movement command
   each element of the table consists of dircetion to turn into
   and the number of steps to take in that direction
--]]
function mytokenize (s)
   tokens = {}
   -- using string.gmatch
   for t, n in string.gmatch(s, "(%u)(%d+)") do
      table.insert(tokens, {turn = t, steps= tonumber(n)})
   end
   return tokens
end
