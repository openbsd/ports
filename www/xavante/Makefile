# $OpenBSD: Makefile,v 1.6 2005/12/01 20:17:05 pedro Exp $

COMMENT=	"lua web server with cgi support"
DISTNAME=	xavante-1.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www
MASTER_SITES=	http://luaforge.net/frs/download.php/958/

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
		::devel/luacopas ::devel/luavenv ::devel/luaposix ::www/cgilua
RUN_DEPENDS=	${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@xavantepath@:${PREFIX}/lua/xavante/?.lua:g" \
	     -e "s:@sajaxpath@:${PREFIX}/lua/sajax/?.lua:g" \
                ${FILESDIR}/init.lua > ${WRKSRC}/init.lua

post-patch:
	@perl -pi -e 's:\@xavanteweb@:${PREFIX}/share/examples/xavante/:g;' \
                ${WRKSRC}/src/t_xavante_start.lua
	@perl -pi -e 's:\@localbase@:${LOCALBASE}:g;' \
                ${WRKSRC}/src/t_xavante_start.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/xavante
	${INSTALL_DATA_DIR} ${PREFIX}/lua/sajax
	${INSTALL_DATA_DIR} ${PREFIX}/lua/xavante/xavante
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/xavante
	${INSTALL_DATA} ${WRKSRC}/src/xavante/*.lua \
		${PREFIX}/lua/xavante/xavante
	${INSTALL_DATA} ${WRKSRC}/src/coxpcall/coxpcall.lua \
		${PREFIX}/lua/xavante/xavante/coxpcall.lua
	${INSTALL_PROGRAM} ${WRKSRC}/src/t_xavante_start.lua \
		${PREFIX}/bin/xavante
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xavante
	${INSTALL_DATA} ${WRKSRC}/src/sajax/sajax.lua ${PREFIX}/lua/sajax
	${INSTALL_DATA} ${WRKSRC}/web/*.lp ${PREFIX}/share/examples/xavante
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xavante/img
	${INSTALL_DATA} ${WRKSRC}/web/img/*.{gif,jpg} \
		${PREFIX}/share/examples/xavante/img
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xavante
	${INSTALL_DATA} ${WRKSRC}/doc/us/* ${PREFIX}/share/doc/xavante

.include <bsd.port.mk>
