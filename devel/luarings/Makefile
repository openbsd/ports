COMMENT =	multiple states library for the lua language

V =		1.3.0
REVISION =	1
GH_ACCOUNT =	keplerproject
GH_PROJECT =	rings
GH_TAGNAME =	v_${V:S/./_/g}
PKGNAME =	luarings-${V}
CATEGORIES =	devel

HOMEPAGE =	http://keplerproject.github.io/rings/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua

FLAVORS =	lua52
FLAVOR ?=

USE_GMAKE =	Yes
MAKE_FLAGS =	LUA_LIBDIR=${MODLUA_LIBDIR} \
		LUA_DIR=${MODLUA_DATADIR}
CFLAGS +=	-I${MODLUA_INCL_DIR} -fPIC

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/us/* ${MODLUA_DOCDIR}

do-test:
	cp ${WRKSRC}/src/*.so ${WRKSRC}/tests
	cp ${WRKSRC}/src/*.lua ${WRKSRC}/tests
.for r in sample sample_state test
	cd ${WRKSRC}/tests && ${MODLUA_BIN} $r.lua
.endfor

.include <bsd.port.mk>
