# $OpenBSD: Makefile,v 1.24 2019/07/12 20:44:41 sthen Exp $

COMMENT=	coroutine oriented portable asynchronous services for lua

DISTNAME=	copas-1.1.6
PKGNAME=	lua${DISTNAME}
REVISION=	3

CATEGORIES=	devel

HOMEPAGE=	http://keplerproject.github.io/copas/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/downloads/keplerproject/copas/

MODULES=	lang/lua

MODLUA_RUN_DEPENDS+= devel/coxpcall \
		net/luasocket

FLAVORS=	lua52
FLAVOR?=

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH =      *

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/src/copas/copas.lua ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${MODLUA_DOCDIR}

.include <bsd.port.mk>
