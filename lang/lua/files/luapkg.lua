-- $OpenBSD: luapkg.lua,v 1.1 2004/12/16 13:04:07 pedro Exp $
-- Written by Pedro Martelletto <pedro@openbsd.org> in 2004. Public domain.

-- check for valid arguments
function usage() error("Usage: luapkg add/del <name> <init file>") end
if table.getn(arg) < 2 or arg[1] ~= "add" and arg[1] ~= "del" then usage() end

-- get the package table
f = assert(loadfile("@pkgconf@"))
setfenv(f, {}) f() pt = getfenv(f).installed_packages

-- do the necessary changes on it
if arg[1] == "add" then
	assert(not pt[arg[2]], "Package already installed")
	pt[arg[2]] = arg[3] or ""
elseif arg[1] == "del" then
	assert(pt[arg[2]], "Package not installed")
	pt[arg[2]] = nil
end

-- dump it back to disk
f = assert(io.open("@pkgconf@", "w"))
f:write("installed_packages = {\n")
for i, v in pairs(pt) do f:write(string.format("\t[%q] = %q,\n", i, v)) end
f:write("}\n")
f:close()
