# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:41 sthen Exp $

COMMENT =	command line parser for Lua

V =		3.0-1
PKGNAME = 	lua-cliargs-${V:S/-/./g}
REVISION =	1

GH_ACCOUNT =	amireh
GH_PROJECT =	lua_cliargs
GH_TAGNAME =	v${V}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

TEST_DEPENDS =	${FULLPKGPATH}

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} \
		${MODLUA_DATADIR}/cliargs \
		${MODLUA_DATADIR}/cliargs/utils
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/src/cliargs/*.lua ${MODLUA_DATADIR}/cliargs
	${INSTALL_DATA} ${WRKSRC}/src/cliargs/utils/*.lua \
		${MODLUA_DATADIR}/cliargs/utils

# Basic tests to spot obvious breakage
do-test:
	${MODLUA_BIN} ${WRKSRC}/examples/00_general.lua --verbose output input
	${MODLUA_BIN} ${WRKSRC}/examples/01_multiple_options.lua \
	    -i http://example.org -j 2 output.html
	${MODLUA_BIN} ${WRKSRC}/examples/04_commands--git-log.lua --follow
	${MODLUA_BIN} ${WRKSRC}/examples/04_commands--git.lua diff -p

.include <bsd.port.mk>
