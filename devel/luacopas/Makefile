# $OpenBSD: Makefile,v 1.19 2013/06/26 16:49:59 sthen Exp $

PKG_ARCH =      *

COMMENT=	coroutine oriented portable asynchronous services for lua
DISTNAME=	copas-1.1.6
PKGNAME=	lua${DISTNAME}
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://github.com/downloads/keplerproject/copas/

HOMEPAGE=	http://www.keplerproject.org/copas/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/lua
NO_BUILD=	Yes
NO_TEST=	Yes
MODLUA_RUN_DEPENDS+=	devel/coxpcall \
		net/luasocket

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/copas/copas.lua ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${MODLUA_DOCDIR}

.include <bsd.port.mk>
