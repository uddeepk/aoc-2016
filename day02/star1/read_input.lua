-- to read the input of the file and provide a table of strings
function read_input(p)
   -- p is path to file
   -- file = io.open(p)
   lines = {}
   for line in io.lines(p) do
      table.insert(lines, line)
   end
   return lines
end
