-- $OpenBSD: init.lua,v 1.1 2004/12/16 13:04:07 pedro Exp $
-- Written by Pedro Martelletto <pedro@openbsd.org> in 2004. Public domain.

-- adds an entry to a path list
function lua_addpath(path, entry)
	return (path or "") .. ((path and ";") or "") .. entry
end

-- get the package table
f = assert(loadfile("@pkgconf@"))
setfenv(f, {}) f() pt = getfenv(f).installed_packages

-- iterate over the table, loading each package
for i, v in pt do
	local f, e = loadfile(v)
	if not f then
		print(string.format("Failed to load package %s, %s", i, e))
	else f() end -- load the package
end

-- finally, run user's initialization file, if it exists
local f = loadfile((os.getenv("HOME") or "") .. "/.lua/init.lua")
if f then f() end

LUA_PATH = lua_addpath(LUA_PATH, "?;?.lua") -- set the default path
