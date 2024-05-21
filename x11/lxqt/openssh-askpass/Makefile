COMMENT =	query passwords on behalf of ssh agents

NAME =		lxqt-openssh-askpass
VERSION =	2.0.1

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml
WANTLIB += X11 c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS =	x11/lxqt/liblxqt

BUILD_DEPENDS =	x11/lxqt/build-tools2

.include <bsd.port.mk>
