
local function associate_keys(t)
   -- first associate everything to something
   for i = 1, 9 do
      k = tostring(i)
      t[k].U = t[tostring(i - 3)]
      t[k].D = t[tostring(i + 3)]
      t[k].L = t[tostring(i - 1)]
      t[k].R = t[tostring(i + 3)]
   end
end

t = {}
for i = 1 , 9 do
   t[tostring(i)] = {v = tostring(i)}
end

associate_keys(t)

local function fix_moves(t, t2)
   m = t2.move
   for _, v in ipairs(t2.t) do
      t[tostring(v)][m] = t[tostring(v)]
   end

end
top = {t = {1, 2, 3}, move = "U"}
bot = {t = {7, 8, 9}, move = "D"}
left = {t = {1, 4, 7}, move = "L"}
right = {t = {3, 6, 9}, move = "R"}

fix_moves(t,top)
fix_moves(t,bot)
fix_moves(t,left)
fix_moves(t,right)

