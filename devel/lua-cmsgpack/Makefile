COMMENT=	MessagePack implementation and bindings for Lua

GH_ACCOUNT=	antirez
GH_PROJECT=	lua-cmsgpack
GH_COMMIT=	57b1f90cf6cec46450e87289ed5a676165d31071
DISTNAME=	lua-cmsgpack-0.4.0pl20180614

CATEGORIES=	devel

HOMEPAGE=	https://github.com/antirez/lua-cmsgpack

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua

FLAVORS=	lua52 lua53 lua54
FLAVOR?=

TEST_DEPENDS=	${BUILD_PKGPATH}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -fPIC -I${MODLUA_INCL_DIR} -shared \
	${WRKSRC}/lua_cmsgpack.c -o ${WRKSRC}/cmsgpack.so

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/cmsgpack.so ${MODLUA_LIBDIR}

do-test:
	cd ${WRKSRC} && ${MODLUA_BIN} test.lua

.include <bsd.port.mk>
