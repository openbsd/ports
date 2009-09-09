# $OpenBSD: Makefile,v 1.5 2009/09/09 18:31:33 jolan Exp $

PKG_ARCH=	*
COMMENT=	lua library of common programming tasks
DISTNAME=	stdlib-12
PKGNAME=	luastdlib-12
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/4232/
HOMEPAGE=	http://luaforge.net/projects/stdlib/

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/luastdlib
	${INSTALL_DATA} ${WRKSRC}/modules/*.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/modules/*.html ${PREFIX}/share/luastdlib

.include <bsd.port.mk>
