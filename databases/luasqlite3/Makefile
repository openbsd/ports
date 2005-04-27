# $OpenBSD: Makefile,v 1.1.1.1 2005/04/27 04:33:53 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"binding of sqlite3 for lua"
PKGNAME=	luasqlite3-0.2
DISTNAME=	lua-sqlite3-0.2
CATEGORIES=	databases lang/lua
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.nessie.de/mroth/lua-sqlite3/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

LIB_DEPENDS=	sqlite3.8::databases/sqlite3

BUILD_DEPENDS=	::lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

REGRESS_DEPENDS=::databases/luasqlite3
REGRESS_TARGET=	check

post-extract:
	@sed -e "s:@sqlite3path@:${PREFIX}/lua/luasqlite3/?.lua:g" \
		${FILESDIR}/init.lua > ${WRKSRC}/init.lua
	@perl -pi -e s,'^LUA_PATH.*',,g ${WRKSRC}/examples/*.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lua/luasqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/luasqlite3.so ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/sqlite3.lua ${PREFIX}/lua/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/init.lua ${PREFIX}/lua/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/documentation.html \
		${PREFIX}/share/doc/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/luasqlite3

.include <bsd.port.mk>
