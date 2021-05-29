-- do instruction
function doinst(taxi, inst)
   -- dir = taxi.dir
   turn(taxi, inst.turn)
   -- pos = taxi.pos
   movetaxi(taxi, inst.steps)
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
   taxi.pos.x = taxi.pos.x + taxi.dir.x * n
   taxi.pos.y = taxi.pos.y + taxi.dir.y * n
end
