# $OpenBSD: Makefile,v 1.21 2019/07/12 20:43:53 sthen Exp $

COMMENT=	binding of sqlite3 for lua
PKGNAME=	luasqlite3-0.4.1
REVISION=	7
DISTNAME=	lua-sqlite3-0.4.1
CATEGORIES=	databases
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.nessie.de/mroth/lua-sqlite3/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += sqlite3>=8

MODULES=	lang/lua
LIB_DEPENDS=	databases/sqlite3

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-lua-dir=${PREFIX} \
		--with-lua=${MODLUA_BIN} \
		--with-lua-includedir=${MODLUA_INCL_DIR} \
		--with-sqlite3-dir=${LOCALBASE}
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
