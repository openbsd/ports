COMMENT =	full and incremental backups on filesystem
V =		v0.6.0
DISTNAME =	faubackup-${V}
PKGNAME =       ${DISTNAME:S/-v/-/}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://framagit.org/soleneBSD/faubackup/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c popt>=0.3

SITES =			https://framagit.org/soleneBSD/faubackup/-/archive/${V}/

LIB_DEPENDS =		devel/popt
TEST_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS}

FAKE_FLAGS =		sysconfdir=${TRUEPREFIX}/share/examples/faubackup
TEST_FLAGS =		AUTOCONF_VERSION=${AUTOCONF_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.59

.include <bsd.port.mk>
