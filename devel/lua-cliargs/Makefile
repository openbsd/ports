# $OpenBSD: Makefile,v 1.1.1.1 2016/10/12 14:42:15 fcambus Exp $

COMMENT =	command line parser for Lua

V =		3.0-1
PKGNAME = 	lua-cliargs-${V:S/-/./g}

GH_ACCOUNT =	amireh
GH_PROJECT =	lua_cliargs
GH_TAGNAME =	v${V}

CATEGORIES =	devel

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/lua

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} \
		${MODLUA_DATADIR}/cliargs \
		${MODLUA_DATADIR}/cliargs/utils
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/src/cliargs/*.lua ${MODLUA_DATADIR}/cliargs
	${INSTALL_DATA} ${WRKSRC}/src/cliargs/utils/*.lua \
		${MODLUA_DATADIR}/cliargs/utils

.include <bsd.port.mk>
