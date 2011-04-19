# $OpenBSD: Makefile,v 1.14 2011/04/19 17:30:05 jasper Exp $

COMMENT=	coroutine oriented portable asynchronous services for lua
DISTNAME=	copas-1.1.6
PKGNAME=	lua${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	http://github.com/downloads/keplerproject/copas/

HOMEPAGE=	http://www.keplerproject.org/copas/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/lua
NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS+=	devel/coxpcall \
		net/luasocket

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/copas/copas.lua ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacopas
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luacopas

.include <bsd.port.mk>
