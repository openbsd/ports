# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:42 sthen Exp $

COMMENT=	library for packing and unpacking binary data
DISTNAME=	luapack-20061124
REVISION =	4
CATEGORIES=	devel

HOMEPAGE=	http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/

# PD
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua
TEST_DEPENDS=${BUILD_PKGPATH}

FLAVORS=	lua52
FLAVOR?=

do-build:
	${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
		${WRKSRC}/lpack.c -o ${WRKDIST}/pack.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKBUILD}/pack.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/test.lua ${MODLUA_EXAMPLEDIR}

do-test:
	${MODLUA_BIN} ${WRKSRC}/test.lua

.include <bsd.port.mk>
