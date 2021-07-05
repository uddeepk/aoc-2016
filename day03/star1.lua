dofile("input.lua")

local filename = "test"
filename = "input"
local input_t = read_input(filename)

dofile("mylib.lua")

local data_t = get_data_t(input_t)

function init_sides ( t )
   local data = {}
   data.sides = t
   local sum = function (tbl)
      local s = 0
      for _, v in ipairs(tbl) do
	 s = s + v
      end
      return s
   end
   data.sum = sum(data.sides)
   data.is_triangle = function ()
      for _, v in ipairs(data.sides) do
	 if data.sum - v <= v then return false end
      end
      return true
   end
   return data
end


function count_stars(t)
   local triangles = {}
   for _, data in ipairs(t) do
      local d = init_sides(data)
      if d.is_triangle() then triangles[#triangles + 1] = d end
   end
   return #triangles
end

print("star1", count_stars(data_t))

-- star2
-- using the same data_t
local t_star2 = {}

-- defines function that processes triangles from columns
function star2 (data_t)
   local t = {}
   for i = 1, #data_t, 3 do
      for j = 1, 3 do
	 t[#t + 1] = {
	    data_t[i][j],
	    data_t[i+1][j],
	    data_t[i+2][j]
	 }
      end      
   end
   return t
end

t_star2 = star2(data_t) -- this is the data reformatted for columns

print("star2", count_stars(t_star2))
