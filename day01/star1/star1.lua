-- star1 for day1

-- loading function
dofile("mytokenize.lua")
dofile("readinput.lua")
dofile("doinst.lua")

taxi = {pos = {x = 0, y = 0},
	dir = {x = 0, y = 1}
       }

-- load file
-- local filename = io.read()
filename = "testfile"
input_string = readinput(filename)

-- tokenize the list
instruction_list = mytokenize(input_string)

-- run through the list
for i = 1, #instruction_list do
   doinst(taxi, instruction_list[i])
end

print(taxi.pos.x + taxi.pos.y)
