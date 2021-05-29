-- star2 for day1

-- loading function
dofile("../star1/mytokenize.lua")
dofile("../star1/readinput.lua")
dofile("doinst2.lua")

taxi = {pos = {x = 0, y = 0},
	dir = {x = 0, y = 1},
	visited = {}
       }

-- load file
print("Enter path to file: ")
local filename = io.read()
--filename = "testfile"
input_string = readinput(filename)

-- tokenize the list
instruction_list = mytokenize(input_string)

-- run through the list
for i = 1, #instruction_list do
   if(doinst(taxi, instruction_list[i])) then
      break
   end
end

print(taxi.pos.x + taxi.pos.y)
