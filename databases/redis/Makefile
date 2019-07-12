# $OpenBSD: Makefile,v 1.108 2019/07/12 20:44:01 sthen Exp $

COMMENT =		persistent key-value database
DISTNAME =		redis-4.0.14
CATEGORIES =		databases
HOMEPAGE =		https://redis.io/
REVISION =		0

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c ${MODLUA_WANTLIB} m pthread

MASTER_SITES =		http://download.redis.io/releases/

MODULES =		lang/lua \
			lang/tcl

MAKE_FLAGS =		CC="${CC}" \
			DEBUG="${DEBUG}" \
			DEBUG_FLAGS="${DEBUG}" \
			USE_JEMALLOC=no \
			OPT="" \
			OPTIMIZATION="" \
			V=1

FAKE_FLAGS =		INSTALL="${INSTALL_PROGRAM}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_TOP="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

# Warning: running the test suite can take a long time and will
# consume a lot of cpu cycles
TEST_DEPENDS =		${MODTCL_BUILD_DEPENDS}
TEST_FLAGS =		TCL_BIN="${MODTCL_BIN}"

DBDIR =			${VARBASE}/redis
SUBST_VARS +=		DBDIR

pre-configure:
	cp ${WRKSRC}/deps/lua/src/fpconv.? ${WRKSRC}/src/
	cp ${WRKSRC}/deps/lua/src/strbuf.? ${WRKSRC}/src/
	cp ${WRKSRC}/deps/lua/src/lua_*.c ${WRKSRC}/src/
	rm -rf ${WRKSRC}/deps/jemalloc
	rm -rf ${WRKSRC}/deps/lua
	${SUBST_CMD} ${WRKSRC}/src/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_DATA} ${WRKSRC}/redis.conf \
			${PREFIX}/share/examples/redis/redis.conf
	${SUBST_DATA} ${WRKSRC}/sentinel.conf \
			${PREFIX}/share/examples/redis/sentinel.conf

.include <bsd.port.mk>
