# $OpenBSD: Makefile,v 1.6 2020/09/10 13:32:38 mariani Exp $

COMMENT =	frontend for sudo

VERSION =	0.15.0
REVISION =      0

NAME =		lxqt-sudo
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c gio-2.0 glib-2.0 gobject-2.0 lxqt m util

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		security/sudo

.include <bsd.port.mk>
