# $OpenBSD: Makefile,v 1.9 2009/09/06 19:11:47 jolan Exp $

PKG_ARCH=	*

COMMENT=	coroutine oriented portable asynchronous services for lua
DISTNAME=	copas-1.1.5
PKGNAME=	luacopas-1.1.5
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/4027/

HOMEPAGE=	http://www.keplerproject.org/copas/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS+=	::net/luasocket

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/src/copas/copas.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacopas
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luacopas

.include <bsd.port.mk>
