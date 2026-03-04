COMMENT =	multiple states library for the lua language

V =		1.3.0
REVISION =	0
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

CFLAGS +=	-I${MODLUA_INCL_DIR}
COMPILE =	${CC} ${CFLAGS} -fPIC ${CFLAGS} -c
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

REGRESS_FILES =	sample sample_state test

USE_GMAKE =	Yes
FAKE_FLAGS =	DESTDIR=

post-install:
	${INSTALL_DATA_DIR} ${MODLUA_DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/us/* ${MODLUA_DOCDIR}

do-test:
	cp ${WRKSRC}/src/*.so ${WRKSRC}/tests
	cp ${WRKSRC}/src/*.lua ${WRKSRC}/tests
.for r in ${REGRESS_FILES}
	cd ${WRKSRC}/tests && ${MODLUA_BIN} $r.lua
.endfor

.include <bsd.port.mk>
