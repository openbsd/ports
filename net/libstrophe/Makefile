# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:31 sthen Exp $

COMMENT =	simple, lightweight XMPP C library

V =		0.9.2
DISTNAME =	libstrophe-${V}

SHARED_LIBS =	strophe                 2.0 # 1.0

CATEGORIES =	net devel

HOMEPAGE =	http://strophe.im/libstrophe/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

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
