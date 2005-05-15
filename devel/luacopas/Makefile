# $OpenBSD: Makefile,v 1.1.1.1 2005/05/15 00:49:08 jolan Exp $

COMMENT=	"coroutine oriented portable asynchronous services for lua"
DISTNAME=	copas-1.0b
PKGNAME=	luacopas-1.0b
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/461/

HOMEPAGE=	http://www.keplerproject.org/copas/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS=	::lang/lua ::devel/luacompat ::net/luasocket

WRKDIST=	${WRKDIR}/copas

post-extract:
	@sed -e "s:@copaspath@:${PREFIX}/lua/luacopas/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luacopas
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luacopas
	${INSTALL_DATA} ${WRKSRC}/copas.lua ${PREFIX}/lua/luacopas
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacopas
	${INSTALL_DATA} ${WRKSRC}/*.html ${WRKSRC}/*.png \
		${PREFIX}/share/doc/luacopas

.include <bsd.port.mk>
