# $OpenBSD: Makefile,v 1.110 2020/03/17 04:51:28 tb Exp $

COMMENT =		persistent key-value database
DISTNAME =		redis-5.0.8
CATEGORIES =		databases
HOMEPAGE =		https://redis.io/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c ${MODLUA_WANTLIB} m pthread

MASTER_SITES =		http://download.redis.io/releases/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

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
