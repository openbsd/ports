COMMENT =	select a region in a Wayland compositor
UNLINKED =	wayland

GH_ACCOUNT =	emersion
GH_PROJECT =	slurp
GH_TAGNAME =	v1.4.0

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

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
