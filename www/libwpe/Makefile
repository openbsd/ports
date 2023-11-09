COMMENT =	general-purpose library for the WPE-flavored port of WebKit

CATEGORIES =	www wayland

GH_ACCOUNT =	WebPlatformForEmbedded
GH_PROJECT =	libwpe
GH_TAGNAME =	1.14.1

SHARED_LIBS =	wpe-1.0	0.0 # 0.0

WANTLIB += 	xkbcommon c++

# BSD
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	x11/xkbcommon

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
