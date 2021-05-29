--[[ 
 returns a table of consisting of each movement command
   each element of the table consists of dircetion to turn into
   and the number of steps to take in that direction
--]]
function mytokenize (s)
   index = 1
   -- print(s)
   -- io.open("../input")
   tokens = {}
   -- using string.gmatch
   for t, n in string.gmatch(s, "(%u)(%d+)") do
      table.insert(tokens, {turn = t, steps= n})
   end
   return tokens
end
