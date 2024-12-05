COMMENT =	desktop components for Wayland using the Layer Shell proto

GH_TAGNAME =	v0.9.0
GH_ACCOUNT =	wmww
GH_PROJECT =	gtk-layer-shell

CATEGORIES =	wayland
SHARED_LIBS +=	gtk-layer-shell 1.0 # 0.0

# MIT
PERMIT_PACKAGE =	Yes

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson
CONFIGURE_ARGS =-Dexamples=true

BUILD_DEPENDS =	devel/gobject-introspection \
		lang/vala \
		wayland/wayland-protocols

LIB_DEPENDS =	x11/gtk+3
WANTLIB +=	c gdk-3 glib-2.0 gobject-2.0 gtk-3 wayland-client

# Needed for ports-gcc - does not work in LDFLAGS
CFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>
