-- $OpenBSD: posix.lua,v 1.1.1.1 2004/12/16 21:21:14 pedro Exp $
assert(loadlib("luaposix.so","luaopen_posix"))()
