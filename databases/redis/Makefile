# $OpenBSD: Makefile,v 1.83 2015/07/18 15:08:47 dcoppa Exp $

COMMENT =		persistent key-value database
DISTNAME =		redis-3.0.3
CATEGORIES =		databases
HOMEPAGE =		http://redis.io/

MAINTAINER = 		David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		c ${MODLUA_WANTLIB} m pthread

MASTER_SITES =		http://download.redis.io/releases/

MODULES =		lang/lua \
			lang/tcl

MAKE_FLAGS =		CC=${CC} \
			V=1

FAKE_FLAGS =		INSTALL="${INSTALL_PROGRAM}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_TOP="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

# Warning: running the test suite can take a long time and will
# consume a lot of cpu cycles
TEST_DEPENDS =		${MODTCL_BUILD_DEPENDS}
TEST_FLAGS =		TCL_BIN="${MODTCL_BIN}"

DBDIR =			/var/redis
SUBST_VARS +=		DBDIR

pre-configure:
	cp ${WRKSRC}/deps/lua/src/fpconv.? ${WRKSRC}/src/
	cp ${WRKSRC}/deps/lua/src/strbuf.? ${WRKSRC}/src/
	cp ${WRKSRC}/deps/lua/src/lua_*.c ${WRKSRC}/src/
	rm -rf ${WRKSRC}/deps/lua
	${SUBST_CMD} ${WRKSRC}/src/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_DATA} ${WRKSRC}/redis.conf \
			${PREFIX}/share/examples/redis/redis.conf
	${SUBST_DATA} ${WRKSRC}/sentinel.conf \
			${PREFIX}/share/examples/redis/sentinel.conf

.include <bsd.port.mk>
