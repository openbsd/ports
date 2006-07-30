# $OpenBSD: Makefile,v 1.3 2006/07/30 04:51:39 pedro Exp $
SHARED_ONLY=	Yes

COMMENT=	"binding of sqlite3 for lua"
PKGNAME=	luasqlite3-0.4.1
DISTNAME=	lua-sqlite3-0.4.1
CATEGORIES=	databases lang/lua
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.nessie.de/mroth/lua-sqlite3/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-lua-dir=${PREFIX}
CFLAGS+=	-fPIC -DPIC

LIB_DEPENDS=	sqlite3.8::databases/sqlite3

BUILD_DEPENDS=	:lua->=5.1:lang/lua
RUN_DEPENDS=	${BUILD_DEPENDS}

REGRESS_DEPENDS=::databases/luasqlite3
REGRESS_TARGET=	check

pre-install:
	@rm -f ${WRKSRC}/examples/path.lua

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lua/5.1/sqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/sqlite3.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/libluasqlite3.so \
		${PREFIX}/lib/lua/5.1/sqlite3/core.so
	${INSTALL_DATA} ${WRKSRC}/documentation.html \
		${PREFIX}/share/doc/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/examples/*.lua \
		${PREFIX}/share/examples/luasqlite3

.include <bsd.port.mk>
