-- solve for star2 for day02

function exec_inst(last_key, instruction)
   for i = 1, #instruction do
      last_key = last_key[string.sub(instruction,i,i)]
   end
   return last_key
end

function star2(filepath)
   
   dofile("../star1/read_input.lua") -- load read_input("path to file") -> table
   dofile("setup.lua") -- sets up t
   -- each element of t is example ["5"] = {v = "5", U = t["2"], D = ..
   
   code = ""
   instructions = read_input(filepath)
   last_key = t["5"]

   -- run through the instructions
   for _, instruction in ipairs(instructions) do
      
      last_key = exec_inst(last_key, instruction)
      code = code .. last_key.v
   end

   print("star2:", code)
end

print("Enter path to file: ")
filepath = io.read()
star2(filepath)
