COMMENT =		object-oriented input system

V =			1.3
DISTNAME =		ois-v${V:S/./-/g}
PKGNAME =		ois-${V}
REVISION =		5

SHARED_LIBS =		OIS	0.0

CATEGORIES =		devel

HOMEPAGE =		http://www.wreckedgames.com

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# zlib/libpng
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 m ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${SITE_SOURCEFORGE:=wgois/}
EXTRACT_SUFX =		.zip

# needs libtoolize
BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${X11BASE}/include"

AUTOCONF_VERSION =	2.60
AUTOMAKE_VERSION =	1.10

NO_TEST =		Yes
FIX_CRLF_FILES =	demos/FFConsoleDemo.cpp demos/OISConsole.cpp \
			src/Makefile.am src/linux/LinuxInputManager.cpp

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh ./bootstrap

.include <bsd.port.mk>
