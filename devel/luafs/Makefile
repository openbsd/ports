COMMENT =	file system library for the lua language

GH_ACCOUNT =	lunarmodules
GH_PROJECT =	luafilesystem
GH_TAGNAME =	v1_8_0
PKGNAME =	luafs-1.8.0
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://lunarmodules.github.io/luafilesystem/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

FLAVORS =	lua52 lua53 lua54
FLAVOR ?=

CFLAGS +=	-I${MODLUA_INCL_DIR} -I${LOCALBASE}/include
LDFLAGS +=	-L${MODLUA_LIBDIR} -L${LOCALBASE}/lib

ALL_TARGET =	lib

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DOCDIR} ${MODLUA_EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/lfs.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/us/*.html ${WRKSRC}/doc/us/*.png \
		${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/tests/*.lua ${MODLUA_EXAMPLEDIR}

do-test:
	cp ${WRKDIST}/*.so ${WRKDIST}/tests
	cd ${WRKDIST}/tests && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
