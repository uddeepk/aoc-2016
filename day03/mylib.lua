-- helper functions for processing the input

-- defines function that process strings into a table of numbers
function get_data (s)
   local t = {}
   for num in string.gmatch(s, "%d+") do
      t[#t + 1] = tonumber(num)
   end
   return t
end

-- defines function to process a table of strings by calling get_data
-- returns a table of tables ?
function get_data_t ( t)
   local data_t = {}
   for _, v in ipairs(t) do
      data_t [#data_t + 1 ] = get_data(v)
   end
   return data_t
end

