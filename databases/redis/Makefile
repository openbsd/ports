# $OpenBSD: Makefile,v 1.17 2011/11/29 16:07:23 dcoppa Exp $

COMMENT =		persistent key-value database
DISTNAME =		redis-2.4.4
CATEGORIES =		databases
HOMEPAGE =		http://redis.io/

MAINTAINER = 		David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://redis.googlecode.com/files/

MODULES =		lang/tcl

USE_GMAKE =		Yes

FAKE_FLAGS =		INSTALL_TOP=${WRKINST}${PREFIX}

# Replace cp/mkdir with our install commands
# Enable verbose compilation
MAKE_FLAGS =		INSTALL="${INSTALL_PROGRAM}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}" \
			V=1

CFLAGS +=		-I${LOCALBASE}/include

WANTLIB += 		c execinfo m pthread

LIB_DEPENDS =		devel/libexecinfo

# Warning: executing the test suite can take a long time and will
# consume a lot of cpu cycles
REGRESS_DEPENDS =       ${MODTCL_BUILD_DEPENDS}
REGRESS_FLAGS =		TCL_BIN="${MODTCL_BIN}"
REGRESS_TARGET =	test

DBDIR =			/var/redis
SUBST_VARS +=		DBDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_CMD} -c -o root -g bin ${WRKSRC}/redis.conf \
		${PREFIX}/share/examples/redis/redis.conf

.include <bsd.port.mk>
