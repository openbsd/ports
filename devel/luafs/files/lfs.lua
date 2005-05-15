-- $OpenBSD: lfs.lua,v 1.1.1.1 2005/05/15 00:42:52 jolan Exp $
assert(loadlib("luafs.so", "luaopen_lfs"))()
