# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:41 sthen Exp $

V =		1.0.2
COMMENT =	library for bitwise operations in Lua
DISTNAME =	LuaBitOp-${V}
PKGNAME =	lua-bitop-${V}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	https://bitop.luajit.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://bitop.luajit.org/download/

# "Lua BitOp is a C extension module for Lua 5.1/5.2"
FLAVORS =	lua52
FLAVOR ?=

MODULES =	lang/lua

USE_GMAKE =	Yes
MAKE_FLAGS +=	INCLUDES=-I${MODLUA_INCL_DIR} CCOPT= \
		LUA=${MODLUA_BIN} CC="${CC}"

TEST_DEPENDS =	${BASE_PKGPATH}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/bit.so ${MODLUA_LIBDIR}
	cd ${WRKSRC}/doc && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${MODLUA_DOCDIR}/{} \;

.include <bsd.port.mk>
