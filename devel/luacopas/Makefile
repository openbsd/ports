# $OpenBSD: Makefile,v 1.5 2006/09/21 01:21:19 pedro Exp $

COMMENT=	"coroutine oriented portable asynchronous services for lua"
V=		1.1.0
DISTNAME=	copas-${V}
PKGNAME=	luacopas-${V}
CATEGORIES=	devel
MASTER_SITES=	http://luaforge.net/frs/download.php/1768/

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

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/src/copas/copas.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luacopas
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${PREFIX}/share/doc/luacopas

.include <bsd.port.mk>
