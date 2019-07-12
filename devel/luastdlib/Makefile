# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:42 sthen Exp $

PKG_ARCH =      *

COMMENT=	lua library of common programming tasks
DISTNAME=	stdlib-20
PKGNAME=	lua${DISTNAME}
REVISION=	1
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/4805/
HOMEPAGE=	http://luaforge.net/projects/stdlib/
EXTRACT_SUFX=	.zip

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS=	lua52
FLAVOR?=

NO_BUILD=	Yes
NO_TEST=	Yes
WRKDIST=	${WRKDIR}/stdlib

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/modules/*.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/modules/*.html ${MODLUA_DOCDIR}

.include <bsd.port.mk>
