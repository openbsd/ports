COMMENT =	select a region in a Wayland compositor

GH_ACCOUNT =	emersion
GH_PROJECT =	slurp
GH_TAGNAME =	v1.5.0

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

HOMEPAGE =	https://github.com/emersion/slurp.git

MODULES =	devel/meson

BUILD_DEPENDS = textproc/scdoc \
		wayland/libinput-openbsd \
		wayland/wayland-protocols \
		wayland/wayland

LIB_DEPENDS =	graphics/cairo \
		wayland/wayland \
		x11/xkbcommon

WANTLIB +=	cairo wayland-client wayland-cursor xkbcommon c

DEBUG_PACKAGES =${BUILD_PACKAGES}

.include <bsd.port.mk>
