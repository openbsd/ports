COMMENT =		REINER SCT cyberJack chipcard reader driver

V =			3.99.5
SP =			15
DISTNAME =		pcsc-cyberjack_${V}final.SP${SP}
PKGNAME =		${DISTNAME:S/_/-/}

SHARED_LIBS =		ifd-cyberjack		0.1 # 6.0

CATEGORIES =		security

HOMEPAGE =		https://www.reiner-sct.com/support/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# LGPL2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m usb-1.0

SITES =			https://support.reiner-sct.de/downloads/LINUX/V${V}_SP${SP}/
EXTRACT_SUFX =		.tar.bz2

# -std=c++11
COMPILER =		base-clang ports-clang ports-gcc

BUILD_DEPENDS =		security/pcsc-lite
RUN_DEPENDS =		security/pcsc-lite
LIB_DEPENDS =		devel/libusb1

MAKE_FLAGS =		CPPFLAGS=-I${LOCALBASE}/include \
			CXXFLAGS="${CXXFLAGS} -std=c++11 -Wno-c++11-narrowing"

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--disable-xml2 \
			--enable-release

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =		${WRKDIR}/${DISTNAME:S/_/-/}

FIX_CRLF_FILES =	cjeca32/Debug.cpp cjeca32/RSCTCriticalSection.cpp

.include <bsd.port.mk>
