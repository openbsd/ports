# $OpenBSD: Makefile,v 1.2 2016/11/29 22:24:40 tb Exp $

COMMENT =	simple, lightweight XMPP C library

GH_ACCOUNT =	strophe
GH_PROJECT =	libstrophe
GH_TAGNAME =	0.9.1

SHARED_LIBS =	strophe                 1.0 # 1.0

CATEGORIES =	net devel

HOMEPAGE =	http://strophe.im/libstrophe/

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# Dual licensed: MIT and GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto expat ssl

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/check

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

post-patch:
	@mkdir -p ${WRKSRC}/m4 # need for autoreconf

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf --install

.include <bsd.port.mk>
