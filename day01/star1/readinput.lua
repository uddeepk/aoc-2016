-- read input file and return string
function readinput(filename)
   p = "../" .. filename -- file path
   file = io.open(p)
   s = file:read("a")
   return s
end
