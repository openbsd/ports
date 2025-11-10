COMMENT =	screen locker for Wayland

V =		1.8.4
DISTNAME =	swaylock-${V}
SITES =		https://github.com/swaywm/swaylock/releases/download/v${V}/

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson
CONFIGURE_ARGS =-Dpam=disabled

BUILD_DEPENDS =	wayland/wayland-protocols \
		textproc/scdoc

LIB_DEPENDS =	graphics/gdk-pixbuf2 \
		x11/xkbcommon \
		graphics/cairo \
		wayland/wayland

WANTLIB =	c cairo gdk_pixbuf-2.0 gobject-2.0 m wayland-client xkbcommon

DEBUG_PACKAGES =${BUILD_PACKAGES}

post-extract:
	cp ${FILESDIR}/bsdauth.c ${WRKSRC}

.include <bsd.port.mk>
