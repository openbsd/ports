# $OpenBSD: Makefile,v 1.1.1.1 2005/05/25 06:13:16 jolan Exp $

COMMENT=	"lua web server with cgi support"
DISTNAME=	xavante-1.1b
CATEGORIES=	www
MASTER_SITES=	http://luaforge.net/frs/download.php/528/

HOMEPAGE=	http://www.keplerproject.org/xavante/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
BUILD_DEPENDS=	::lang/lua ::devel/luafs ::devel/luacompat ::net/luasocket \
		::devel/luacopas ::devel/luavenv ::www/cgilua
RUN_DEPENDS=	${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@xavantepath@:${PREFIX}/lua/xavante/?.lua:g" \
                ${FILESDIR}/init.lua > ${WRKSRC}/init.lua

post-patch:
	@perl -pi -e 's:\@xavanteweb@:${PREFIX}/examples/xavante/:g;' \
                ${WRKSRC}/bin/t_xavante_start.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/xavante
	${INSTALL_DATA_DIR} ${PREFIX}/lua/xavante/xavante
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/xavante
	${INSTALL_DATA} ${WRKSRC}/bin/xavante/*.lua \
		${PREFIX}/lua/xavante/xavante
	${INSTALL_DATA} ${WRKSRC}/bin/coxpcall/coxpcall.lua \
		${PREFIX}/lua/xavante/xavante/coxpcall.lua
	${INSTALL_PROGRAM} ${WRKSRC}/bin/t_xavante_start.lua \
		${PREFIX}/bin/xavante
	${INSTALL_DATA_DIR} ${PREFIX}/examples/xavante
	${INSTALL_DATA} ${WRKSRC}/web/*.{lp,lua} ${PREFIX}/examples/xavante
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xavante
	${INSTALL_DATA} ${WRKSRC}/web/doc/* ${PREFIX}/share/doc/xavante

.include <bsd.port.mk>
