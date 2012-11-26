# $OpenBSD: Makefile,v 1.1.1.1 2012/11/26 09:52:13 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	JSON support for Lua

DISTNAME=	lua-cjson-2.1.0
CATEGORIES=	devel

HOMEPAGE=	http://www.kyne.com.au/~mark/software/lua-cjson.php

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	lang/lua

MASTER_SITES=	http://www.kyne.com.au/~mark/software/download/

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/lua/*.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/cjson/
	${INSTALL_PROGRAM} ${WRKSRC}/cjson.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lua/cjson/util.lua ${MODLUA_DATADIR}/cjson/
	${INSTALL_SCRIPT} ${WRKSRC}/lua/*.lua ${PREFIX}/bin/

.include <bsd.port.mk>
