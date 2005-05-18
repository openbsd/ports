# $OpenBSD: Makefile,v 1.1.1.1 2005/05/18 03:04:00 jolan Exp $

COMMENT=	"library to execute lua chunks in separate environments"

DISTNAME=	venv-1.0
PKGNAME=	luavenv-1.0
CATEGORIES=	devel

MASTER_SITES=	http://luaforge.net/frs/download.php/264/
HOMEPAGE=	http://www.keplerproject.org/venv/

MAINTAINER=	Pedro Martelletto <pedro@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
BUILD_DEPENDS=	::lang/lua ::devel/luacompat
RUN_DEPENDS=	${BUILD_DEPENDS}

post-extract:
	@sed -e "s:@luavenvpath@:${PREFIX}/lua/luavenv/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luavenv
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luavenv/init.lua
	${INSTALL_DATA} ${WRKSRC}/venv.lua ${PREFIX}/lua/luavenv/venv.lua
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luavenv
	${INSTALL_DATA} ${WRKSRC}/*.{html,png} ${PREFIX}/share/doc/luavenv

.include <bsd.port.mk>
