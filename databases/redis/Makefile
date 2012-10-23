# $OpenBSD: Makefile,v 1.35 2012/10/23 10:41:23 dcoppa Exp $

COMMENT =		persistent key-value database
DISTNAME =		redis-2.6.0
CATEGORIES =		databases
HOMEPAGE =		http://redis.io/

MAINTAINER = 		David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		c m pthread

MASTER_SITES =		http://redis.googlecode.com/files/

MODULES =		lang/tcl

MAKE_FLAGS =		CC=${CC} \
			DEBUG="" \
			OPTIMIZATION="" \
			V=1

FAKE_FLAGS =		INSTALL="${INSTALL_PROGRAM}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_TOP="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

CFLAGS +=		-I${LOCALBASE}/include

# Warning: running the test suite can take a long time and will
# consume a lot of cpu cycles
REGRESS_DEPENDS =       ${MODTCL_BUILD_DEPENDS}
REGRESS_FLAGS =		TCL_BIN="${MODTCL_BIN}"
REGRESS_TARGET =	test

DBDIR =			/var/redis
SUBST_VARS +=		DBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/redis.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c \
		${WRKSRC}/redis.conf \
			${PREFIX}/share/examples/redis/redis.conf

.include <bsd.port.mk>
