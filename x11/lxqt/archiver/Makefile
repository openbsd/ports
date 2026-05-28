COMMENT =	lightweight desktop-agnostic Qt file archiver

NAME =		lxqt-archiver
VERSION =	1.4.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c exif
WANTLIB += fm-qt6 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 intl
WANTLIB += json-glib-1.0 m menu-cache xcb xcb-composite xcb-cursor
WANTLIB += xcb-damage xcb-dpms xcb-dri2 xcb-dri3 xcb-ewmh xcb-glx
WANTLIB += xcb-icccm xcb-image xcb-keysyms xcb-present xcb-randr
WANTLIB += xcb-record xcb-render xcb-render-util xcb-res xcb-screensaver
WANTLIB += xcb-shape xcb-shm xcb-sync xcb-util xcb-xf86dri xcb-xfixes
WANTLIB += xcb-xinerama xcb-xinput xcb-xkb xcb-xtest xcb-xv xcb-xvmc

LIB_DEPENDS =	x11/lxqt/libfm-qt \
		x11/menu-cache \
		devel/json-glib

RUN_DEPENDS =	devel/desktop-file-utils \
		archivers/gtar \
		x11/gtk+4,-guic

.include <bsd.port.mk>
