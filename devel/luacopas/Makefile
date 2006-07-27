# $OpenBSD: Makefile,v 1.4 2006/07/27 21:13:56 pedro Exp $

BROKEN=		"Pending update for Lua 5.1"
COMMENT=	"coroutine oriented portable asynchronous services for lua"
DISTNAME=	copas-1.0
PKGNAME=	luacopas-1.0p0
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/823/

HOMEPAGE=	http://www.keplerproject.org/copas/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS=	::lang/lua ::net/luasocket

post-extract:
	@sed -e "s:@copaspath@:${PREFIX}/lua/luacopas/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luacopas
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luacopas
	${INSTALL_DATA} ${WRKSRC}/src/copas/copas.lua ${PREFIX}/lua/luacopas
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacopas
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luacopas

.include <bsd.port.mk>
