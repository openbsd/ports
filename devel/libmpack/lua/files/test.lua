-- Minimal test for lua bindings
local mpack = require('mpack')

local pack = mpack.Packer()
local unpack = mpack.Unpacker()

local input = {one=1, two=2, eleven=11, eighty=80}
local bdata = pack(input)
local output = unpack(bdata)

local n=0
for k,v in pairs(output) do
  n=n+1
end

assert(n, 4)
assert(output["one"] == 1)
assert(output["two"] == 2)
assert(output["eleven"] == 11)
assert(output["eighty"] == 80)

print("Lua binding test passed")
