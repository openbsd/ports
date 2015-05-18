# $OpenBSD: Makefile,v 1.17 2015/05/18 06:56:04 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	binding of sqlite3 for lua
PKGNAME=	luasqlite3-0.4.1
REVISION=	6
DISTNAME=	lua-sqlite3-0.4.1
CATEGORIES=	databases
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.nessie.de/mroth/lua-sqlite3/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += sqlite3>=8

MODULES=	lang/lua

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-lua-dir=${PREFIX} \
		--with-lua-includedir=${MODLUA_INCL_DIR}
CFLAGS+=	-fPIC -DPIC

TEST_DEPENDS=${BASE_PKGPATH}
TEST_TARGET=	check

pre-install:
	rm ${WRKSRC}/examples/path.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_LIBDIR}/sqlite3
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/sqlite3.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/libluasqlite3.so \
		${MODLUA_LIBDIR}/sqlite3/core.so
	${INSTALL_DATA} ${WRKSRC}/documentation.html ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.lua ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
