-- $OpenBSD: init.lua,v 1.1.1.1 2004/12/16 21:21:14 pedro Exp $
-- luaposix's initialization steps
LUA_PATH = lua_addpath(LUA_PATH, "@posixpath@")
