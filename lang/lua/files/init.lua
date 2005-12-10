-- $OpenBSD: init.lua,v 1.3 2005/12/10 23:02:05 pedro Exp $
-- Written by Pedro Martelletto <pedro@openbsd.org> in 2004. Public domain.

-- add an entry to a path list
local function
addpath(path, entry)
	return (path or "") .. ((path and ";") or "") .. entry
end

-- add an entry to the lua path
function
lua_addpath(entry)
	if package then
		-- if we are using luacompat, add the entry to package.path
		package.path = addpath(package.path, entry)
	else
		-- otherwise, add it to the normal 'lua_path'
		LUA_PATH = addpath(LUA_PATH, entry)
	end
end

-- add an entry to the lua c path
function
lua_addcpath(entry)
	if package then
		-- if we are using luacompat, add the entry to package.cpath
		package.cpath = addpath(package.cpath, entry)
	else
		-- otherwise, add it to the normal 'lua_cpath'
		LUA_CPATH = addpath(LUA_CPATH, entry)
	end
end

-- get the package table
local f = assert(loadfile("@pkgconf@"))
setfenv(f, {}) f() local pt = getfenv(f).installed_packages

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

lua_addpath("?;?.lua") -- set the default path

-- nuke exported functions
lua_addpath = nil
lua_addcpath = nil
