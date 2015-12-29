# $OpenBSD: Makefile,v 1.21 2015/12/29 20:06:52 jasper Exp $

PKG_ARCH =      *

COMMENT=	coroutine oriented portable asynchronous services for lua
DISTNAME=	copas-1.1.6
PKGNAME=	lua${DISTNAME}
REVISION=	3
CATEGORIES=	devel
MASTER_SITES=	https://github.com/downloads/keplerproject/copas/

HOMEPAGE=	http://keplerproject.github.io/copas/

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
