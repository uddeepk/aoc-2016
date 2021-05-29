-- do instruction
function doinst(taxi, inst)
   -- dir = taxi.dir
   turn(taxi, inst.turn)
   -- pos = taxi.pos
   return movetaxi(taxi, inst.steps)
end

-- turning taxi using rotation matrix
function turn(taxi, c)
   if c == "L" then
      -- positive 90 turn
      taxi.dir = {x = -taxi.dir.y, y = taxi.dir.x}
   elseif c == "R" then
      -- negative 90 turn
      taxi.dir = {x = taxi.dir.y, y = -taxi.dir.x}
   else
      print("Error!")
   end
end

-- move the taxi in the new direction
function movetaxi(taxi, n)
   for i = 1, n do
      taxi.pos.x = taxi.pos.x + taxi.dir.x
      taxi.pos.y = taxi.pos.y + taxi.dir.y
      -- adding the position to taxi visited

      --string representation of pos
      s = string.format("(%d,%d)", taxi.pos.x, taxi.pos.y)
      if taxi.visited[s] then
	 return true
      end
      taxi.visited[s] = true
   end
   return false
end
