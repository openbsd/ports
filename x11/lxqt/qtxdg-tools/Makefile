COMMENT =	libqtxdg user tools

VERSION =	4.0.0

NAME =		qtxdg-tools

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Svg
WANTLIB += Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml c gio-2.0
WANTLIB += glib-2.0 gobject-2.0 m

LIB_DEPENDS =	x11/qt6/qtsvg \
		x11/lxqt/libqtxdg

BUILD_DEPENDS =	x11/lxqt/build-tools2

.include <bsd.port.mk>
