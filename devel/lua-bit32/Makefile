# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:41 sthen Exp $

COMMENT=	bit32 compatibility module for Lua 5.1
CATEGORIES=	devel

V=		0.3
DISTNAME=	luacompat-5.2-${V}
PKGNAME=	lua-bit32-${V}

GH_ACCOUNT=	keplerproject
GH_PROJECT=	lua-compat-5.2
GH_TAGNAME=	v${V}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

MODLUA_VERSION=	5.1
MODULES=	lang/lua

# MIT
PERMIT_PACKAGE=	Yes

do-build:
	${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -I${WRKDIST}/c-api -shared \
	    ${WRKDIST}/lbitlib.c -o ${WRKDIST}/bit32.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/bit32.so ${MODLUA_LIBDIR}

.include <bsd.port.mk>
