# $OpenBSD: Makefile,v 1.6 2020/10/23 13:44:41 rsadowski Exp $

COMMENT =	fork of libstrophe for use with profanity XMPP client

GH_ACCOUNT =	boothj5
GH_PROJECT =	libmesode
GH_TAGNAME =	0.10.1

CATEGORIES =	net devel

SHARED_LIBS +=  mesode                    1.0 # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Dual licensed: MIT and GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += crypto expat ssl

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/check

SEPARATE_BUILD =	Yes

USE_GMAKE =		Yes

AUTOMAKE_VERSION =	1.16
AUTOCONF_VERSION =	2.69

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
AUTORECONF =		./bootstrap.sh

.include <bsd.port.mk>
