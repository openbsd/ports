COMMENT =	WPE Backend for Wayland

CATEGORIES =	www wayland

GH_ACCOUNT =	igalia
GH_PROJECT =	WPEBackend-fdo
GH_TAGNAME =	1.14.2

SHARED_LIBS =	WPEBackend-fdo-1.0	0.0 # 0.0

WANTLIB +=	epoxy gio-2.0 gobject-2.0 glib-2.0
WANTLIB +=	wayland-server wayland-client wayland-egl wpe-1.0 c++ m

# BSD
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/glib2 \
		wayland/wayland \
		www/libwpe


DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
