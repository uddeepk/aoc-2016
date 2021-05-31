
local function associate_keys(t)
   -- first associate everything to something
   for i = 1, 13 do
      k = tostring(i)
      --t[k].U = t[tostring(i - 3)]
      --t[k].D = t[tostring(i + 3)]
      t[k].L = t[tostring(i - 1)]
      t[k].R = t[tostring(i + 1)]
   end

   o = 2
   x = 1
   interval = 0
   while x < 10 do
      for i = x, x+interval,1 do
	 x1 = tostring(i)
	 x2 = tostring(i + o)
	 t[x1].D = t[x2]
	 t[x2].U = t[x1]

      end
      x = x + interval + 1
      interval = interval + 2
      o = 4
   end
   
   -- now just do 11 and 13
   t["11"].D = t["13"]
   t["13"].U = t["11"]
   
end

t = {}
for i = 1 , 9 do
   t[tostring(i)] = {v = tostring(i)}
end

for _,c in ipairs({"A", "B", "C", "D"}) do
   val = 10 + string.byte(c) - string.byte("A")
   t[tostring(val)] = {v = c}
end

   
associate_keys(t)

local function fix_moves(t, t2)
   m = t2.move
   for _, v in ipairs(t2.t) do
      t[tostring(v)][m] = t[tostring(v)]
   end

end
top = {t = {1, 2, 4, 5, 9}, move = "U"}
bot = {t = {5, 9, 10, 12, 13}, move = "D"}
left = {t = {1, 2, 5, 10, 13}, move = "L"}
right = {t = {1, 4, 9, 12, 13}, move = "R"}

fix_moves(t,top)
fix_moves(t,bot)
fix_moves(t,left)
fix_moves(t,right)

