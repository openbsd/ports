
COMMENT =	VESA CVT standard timing modeline generation library
V =		0.1.2
PKGNAME =	libxcvt-${V}
DISTNAME =	libxcvt-libxcvt-${V}

SHARED_LIBS +=  xcvt                      0.0 # 0.0

CATEGORIES =	x11

HOMEPAGE =	https://gitlab.freedesktop.org/xorg/lib/libxcvt

# X11
PERMIT_PACKAGE =	Yes
WANTLIB += c m

MASTER_SITES =		https://gitlab.freedesktop.org/xorg/lib/libxcvt/-/archive/libxcvt-${V}/

COMPILER_LANGS =	c

MODULES =		devel/meson

.include <bsd.port.mk>
