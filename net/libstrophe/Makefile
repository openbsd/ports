# $OpenBSD: Makefile,v 1.5 2021/09/10 04:30:50 rsadowski Exp $

COMMENT =	simple, lightweight XMPP C library

V =		0.10.1
DISTNAME =	libstrophe-${V}

SHARED_LIBS =	strophe                 3.0 # 1.0

CATEGORIES =	net devel

HOMEPAGE =	https://strophe.im/libstrophe/

MAINTAINER =	Florian Viehweger <openbsd@out-of-creativity.de>

# Dual licensed: MIT and GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += crypto expat ssl

MASTER_SITES =	https://github.com/strophe/libstrophe/releases/download/${V}/

BUILD_DEPENDS =	devel/libtool

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/check

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


.include <bsd.port.mk>
