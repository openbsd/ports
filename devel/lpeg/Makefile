COMMENT=	parsing expression grammars library for lua
DISTNAME=	lpeg-1.0.2
PKGNAME=	lua-${DISTNAME}
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	http://www.inf.puc-rio.br/~roberto/lpeg/

HOMEPAGE=	http://www.inf.puc-rio.br/~roberto/lpeg/

# ISC-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS=	lua52 lua53
FLAVOR?=

ALL_TARGET=	lpeg.so
MAKE_FILE=	makefile
MAKE_FLAGS=	CC=${CC} COPT="${CFLAGS}" DLLFLAGS="-shared"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/makefile

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/lpeg.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/{lpeg,re}.html ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/re.lua ${MODLUA_DATADIR}

do-test:
	cd ${WRKDIST} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
