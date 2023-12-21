COMMENT =	library for converting characters to X key-presses

DISTNAME =	libfakekey-0.3

SHARED_LIBS =	fakekey	0.0 # 0.1

CATEGORIES =	x11

HOMEPAGE =	https://git.yoctoproject.org/libfakekey/

# LGPLv2+
PERMIT_PACKAGE =Yes

WANTLIB += X11 Xext Xi Xtst xcb

SITES =		https://git.yoctoproject.org/libfakekey/snapshot/

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
