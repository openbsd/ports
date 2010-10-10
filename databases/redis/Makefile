# $OpenBSD $

COMMENT =		persistent key-value database
DISTNAME =		redis-2.0.2
CATEGORIES =		databases
HOMEPAGE =		http://redis.googlecode.com/

MAINTAINER = 		David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}files/

MODULES =		lang/tcl

USE_GMAKE =		Yes

FAKE_FLAGS =		INSTALL_TOP=${WRKINST}${PREFIX}

# Replace cp by install
MAKE_FLAGS =		INSTALL="${INSTALL_PROGRAM}"

WANTLIB += 		c m pthread

# Warning: executing the test suite can take a long time and will
# consume a lot of cpu cycles
REGRESS_DEPENDS =       ${MODTCL_BUILD_DEPENDS}
REGRESS_FLAGS =		TCL_BIN="${MODTCL_BIN}"
REGRESS_TARGET =	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${INSTALL_DATA} ${WRKSRC}/redis.conf \
		${PREFIX}/share/examples/redis/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/redis
	${INSTALL_DATA} ${WRKBUILD}/doc/* ${PREFIX}/share/doc/redis/

.include <bsd.port.mk>
