-- $OpenBSD: alarm.lua,v 1.1.1.1 2006/01/25 23:32:13 jolan Exp $
assert(loadlib("luaalarm.so","luaopen_alarm"))()
