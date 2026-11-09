COMMENT =	qt binding for libfm

NAME =		libfm-qt

SHARED_LIBS +=  fm-qt6	1.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets exif
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 m
WANTLIB += xcb xcb-composite xcb-cursor xcb-damage xcb-dpms xcb-dri2
WANTLIB += xcb-dri3 xcb-ewmh xcb-glx xcb-icccm xcb-image xcb-keysyms
WANTLIB += xcb-present xcb-randr xcb-record xcb-render xcb-render-util
WANTLIB += xcb-res xcb-screensaver xcb-shape xcb-shm xcb-sync
WANTLIB += xcb-util xcb-xf86dri xcb-xfixes xcb-xinerama xcb-xinput
WANTLIB += xcb-xkb xcb-xtest xcb-xv xcb-xvmc xkbcommon

LIB_DEPENDS =	x11/qt6/qtbase \
		graphics/libexif

BUILD_DEPENDS +=	x11/lxqt/menu-data>=${VERSION}

RUN_DEPENDS =	misc/shared-mime-info \
		x11/lxqt/menu-data

.include <bsd.port.mk>
