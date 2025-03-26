COMMENT=	binding of sqlite3 for lua
V=		0.9.6
PKGNAME=	luasqlite3-${V}
DISTNAME=	lsqlite3-v${V:S/\.//g}
EXTRACT_SUFX=	.zip
CATEGORIES=	databases
SITES=		http://lua.sqlite.org/index.cgi/zip/

HOMEPAGE=	http://lua.sqlite.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += sqlite3

MODULES=	lang/lua
FLAVORS=	lua52 lua53 lua54
FLAVOR?=

MODLUA_BUILD_DEPENDS= devel/luarocks
LIB_DEPENDS=	databases/sqlite3

USE_GMAKE=	Yes

PORTHOME=	${WRKDIR}

# tests need lunitx
NO_TEST=	Yes

pre-configure:
	ln -s ${LOCALBASE}/bin/luarocks-${MODLUA_VERSION} ${WRKDIR}/bin/luarocks

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKDIR}/.luarocks/lib/lua/${MODLUA_VERSION}/lsqlite3.so \
		${MODLUA_LIBDIR}/lsqlite3.so
	${INSTALL_DATA} ${WRKSRC}/examples/*.lua ${MODLUA_EXAMPLEDIR}

.include <bsd.port.mk>
