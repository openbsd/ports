-- $OpenBSD: init.lua,v 1.1.1.1 2004/12/16 13:38:12 pedro Exp $
-- luasocket's initialization steps
LUA_PATH = lua_addpath(LUA_PATH, "@socketpath@")
require("lua")
