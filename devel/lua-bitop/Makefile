# $OpenBSD: Makefile,v 1.1.1.1 2017/03/04 17:11:09 edd Exp $

COMMENT =	numeric bit operations for Lua

V =		1.0.2
DISTNAME =	LuaBitOp-${V}
PKGNAME =	lua-bitop-${V}

CATEGORIES =	devel

HOMEPAGE =	http://bitop.luajit.org/

# "Lua BitOp is a C extension module for Lua 5.1/5.2"
FLAVORS =       lua52

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/download/

MODULES =		lang/lua
USE_GMAKE =		Yes

MAKE_FLAGS +=		INCLUDES=-I${MODLUA_INCL_DIR} CCOPT= LUA=${MODLUA_BIN}

INSTALL_DIR =		${MODLUA_LIBDIR}
do-install:
	${INSTALL_DATA_DIR} ${INSTALL_DIR}
	cd ${WRKSRC} && ${INSTALL_DATA} bit.so ${INSTALL_DIR}

.include <bsd.port.mk>
