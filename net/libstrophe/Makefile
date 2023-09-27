COMMENT =	simple, lightweight XMPP C library

V =		0.12.3
DISTNAME =	libstrophe-${V}

SHARED_LIBS =	strophe                 4.0 # 12.1

CATEGORIES =	net devel

HOMEPAGE =	https://strophe.im/libstrophe/

MAINTAINER =	Omar Polo <op@openbsd.org>

# Dual licensed: MIT and GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += crypto expat ssl

SITES =		https://github.com/strophe/libstrophe/releases/download/${V}/

BUILD_DEPENDS =	devel/libtool

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/check

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
