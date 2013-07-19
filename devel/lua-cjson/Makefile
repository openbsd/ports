# $OpenBSD: Makefile,v 1.3 2013/07/19 12:02:48 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	JSON support for Lua

DISTNAME=	lua-cjson-2.1.0
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	http://www.kyne.com.au/~mark/software/lua-cjson.php

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	lang/lua

MASTER_SITES=	http://www.kyne.com.au/~mark/software/download/

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/lua/*.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/cjson/
	${INSTALL_PROGRAM} ${WRKSRC}/cjson.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lua/cjson/util.lua ${MODLUA_DATADIR}/cjson/
.for s in json2lua lua2json
	${INSTALL_SCRIPT} ${WRKSRC}/lua/$s.lua ${PREFIX}/bin/$s.lua${MODLUA_VERSION}
.endfor

.include <bsd.port.mk>
