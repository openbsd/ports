# $OpenBSD: Makefile,v 1.4 2006/12/17 11:50:51 kili Exp $

BROKEN=		"Pending update for Lua 5.1"
COMMENT=	"library to execute lua chunks in separate environments"

DISTNAME=	venv-1.1
PKGNAME=	luavenv-1.1
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/956/
HOMEPAGE=	http://www.keplerproject.org/venv/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS=	::lang/lua

post-extract:
	@sed -e "s:@luavenvpath@:${PREFIX}/lua/luavenv/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luavenv
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luavenv/init.lua
	${INSTALL_DATA} ${WRKSRC}/src/venv.lua ${PREFIX}/lua/luavenv/venv.lua
	${INSTALL_DATA} ${WRKSRC}/src/stable.lua ${PREFIX}/lua/luavenv/stable.lua
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luavenv
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.{html,png} ${PREFIX}/share/doc/luavenv

.include <bsd.port.mk>
