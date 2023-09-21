COMMENT=	parsing expression grammars library for lua
DISTNAME=	lpeg-1.1.0
PKGNAME=	lua-${DISTNAME}
CATEGORIES=	devel
SITES=		${HOMEPAGE}

HOMEPAGE=	https://www.inf.puc-rio.br/~roberto/lpeg/

# ISC-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS=	lua52 lua53
FLAVOR?=

ALL_TARGET=	lpeg.so
MAKE_FILE=	${WRKSRC}/makefile
MAKE_FLAGS=	CC=${CC} \
		COPT="${CFLAGS}" \
		DLLFLAGS="-shared" \
		LUADIR=${MODLUA_INCL_DIR}

pre-configure:
	${SUBST_CMD} ${MAKE_FILE}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/lpeg.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/{lpeg,re}.html ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/re.lua ${MODLUA_DATADIR}

do-test:
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
