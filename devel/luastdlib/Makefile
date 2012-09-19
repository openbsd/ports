# $OpenBSD: Makefile,v 1.11 2012/09/19 08:15:08 jasper Exp $

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
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/stdlib

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/modules/*.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/modules/*.html ${MODLUA_DOCDIR}

.include <bsd.port.mk>
