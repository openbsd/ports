# $OpenBSD: Makefile,v 1.65 2014/04/29 08:45:28 dcoppa Exp $

COMMENT =		persistent key-value database
DISTNAME =		redis-2.8.9
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
	cp ${WRKSRC}/deps/lua/src/strbuf.? ${WRKSRC}/src/
	cp ${WRKSRC}/deps/lua/src/lua_*.c ${WRKSRC}/src/
	${SUBST_CMD} ${WRKSRC}/src/Makefile \
		${WRKSRC}/src/redis.h

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/redis-sentinel ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
		${WRKSRC}/redis.conf \
			${PREFIX}/share/examples/redis/redis.conf
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
		${WRKSRC}/sentinel.conf \
			${PREFIX}/share/examples/redis/sentinel.conf

.include <bsd.port.mk>
