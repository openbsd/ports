# $OpenBSD: Makefile,v 1.9 2010/09/01 09:17:43 sthen Exp $
SHARED_ONLY=	Yes

COMMENT=	binding of sqlite3 for lua
PKGNAME=	luasqlite3-0.4.1
REVISION=	1
DISTNAME=	lua-sqlite3-0.4.1
CATEGORIES=	databases
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.nessie.de/mroth/lua-sqlite3/

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += sqlite3.>=8

MODULES=	lang/lua

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-lua-dir=${PREFIX}
CFLAGS+=	-fPIC -DPIC

LIB_DEPENDS=	::databases/sqlite3
REGRESS_DEPENDS=::databases/luasqlite3
REGRESS_TARGET=	check

pre-install:
	@rm -f ${WRKSRC}/examples/path.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}/sqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/luasqlite3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/sqlite3.lua ${PREFIX}/share/lua/5.1
	${INSTALL_DATA} ${WRKSRC}/libluasqlite3.so \
		${MODLUA_LIBDIR}/sqlite3/core.so
	${INSTALL_DATA} ${WRKSRC}/documentation.html \
		${PREFIX}/share/doc/luasqlite3
	${INSTALL_DATA} ${WRKSRC}/examples/*.lua \
		${PREFIX}/share/examples/luasqlite3

.include <bsd.port.mk>
