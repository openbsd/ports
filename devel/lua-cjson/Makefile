# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:15 sthen Exp $

COMMENT=	JSON support for Lua

DISTNAME=	lua-cjson-2.1.0
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://www.kyne.com.au/~mark/software/lua-cjson.php

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.kyne.com.au/~mark/software/download/

MODULES=	lang/lua
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

FLAVORS=	lua52 lua53
FLAVOR?=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/lua/*.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/cjson/
	${INSTALL_PROGRAM} ${WRKSRC}/cjson.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lua/cjson/util.lua ${MODLUA_DATADIR}/cjson/
.for s in json2lua lua2json
	${INSTALL_SCRIPT} ${WRKSRC}/lua/$s.lua ${PREFIX}/bin/$s.lua${MODLUA_VERSION}
.endfor

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} ${MODLUA_BIN} test.lua \
	    > ${WRKDIR}/test2.log

.include <bsd.port.mk>
