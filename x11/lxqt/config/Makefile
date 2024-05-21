COMMENT =	tools to configure LXQt and the underlying operating system

NAME =		lxqt-config

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6Screen KF6WindowSystem
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Svg Qt6SvgWidgets Qt6Widgets
WANTLIB += Qt6Xdg Qt6XdgIconLoader Qt6Xml SM X11 Xcursor Xext
WANTLIB += Xfixes c gio-2.0 glib-2.0 gobject-2.0 lxqt m xcb xcb-randr
WANTLIB += z

LIB_DEPENDS =	x11/kde-plasma/libkscreen \
		x11/lxqt/liblxqt \
		x11/qt6/qtsvg

BUILD_DEPENDS =	x11/lxqt/build-tools2 \
		x11/lxqt/menu-data

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS =	-DWITH_TOUCHPAD=No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lxqt-config-input/keyboardlayoutconfig.h

.include <bsd.port.mk>
