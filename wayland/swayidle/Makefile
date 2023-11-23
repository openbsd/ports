COMMENT =	idle management daemon for Wayland

DISTNAME =	swayidle-1.8.0
SITES =		https://github.com/swaywm/swayidle/releases/download/1.8.0/

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES =	devel/meson
CONFIGURE_ARGS =-Dlogind=disabled

BUILD_DEPENDS =	wayland/wayland-protocols \
		textproc/scdoc

LIB_DEPENDS =	wayland/wayland

WANTLIB =	c wayland-client wayland-server

DEBUG_PACKAGES =${BUILD_PACKAGES}

.include <bsd.port.mk>
