USE_NOBTCFI =	Yes

V =		1.3.0
COMMENT =	command line interface for Repology.org
DISTNAME =	repology-${V}
CATEGORIES =	sysutils
REVISION =	1

HOMEPAGE =	https://github.com/ibara/repology

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

SITES =	https://github.com/ibara/repology/releases/download/v${V}/

BUILD_DEPENDS =	lang/gdmd

MAKE_ENV =	DMD=${LOCALBASE}/bin/gdmd

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
