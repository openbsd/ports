# $OpenBSD: Makefile,v 1.8 2011/04/27 12:57:05 gsoares Exp $

COMMENT=	lua library of common programming tasks
DISTNAME=	stdlib-20
PKGNAME=	lua${DISTNAME}
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
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luastdlib
	${INSTALL_DATA} ${WRKSRC}/modules/*.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/modules/*.html ${PREFIX}/share/doc/luastdlib

.include <bsd.port.mk>
