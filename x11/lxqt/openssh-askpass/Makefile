# $OpenBSD: Makefile,v 1.4 2020/09/04 15:40:11 mariani Exp $

COMMENT =	query passwords on behalf of ssh agents

VERSION =	0.15.0

NAME =		lxqt-openssh-askpass
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c gio-2.0 glib-2.0 gobject-2.0 lxqt m

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

.include <bsd.port.mk>
