COMMENT =	configuration editor for openbox window manager

VERSION =	0.16.5

NAME =		obconf-qt

WANTLIB += ${COMPILER_LIBCXX} GL ICE Imlib2 Qt6Core Qt6Gui Qt6Widgets
WANTLIB += SM X11 Xft c cairo fontconfig freetype
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 harfbuzz
WANTLIB += intl m obrender obt pango-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += rsvg-2 xml2

MODULES +=	x11/qt6 devel/cmake
LIB_DEPENDS =	x11/qt6/qtbase \
		x11/openbox

BUILD_DEPENDS =	x11/lxqt/build-tools2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

.include <bsd.port.mk>
