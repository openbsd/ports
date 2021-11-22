# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:43 rsadowski Exp $

COMMENT =	lightweight Qt terminal emulator based on QTermWidget

NAME =		qterminal

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras X11 c m qtermwidget5 util

LIB_DEPENDS +=		x11/lxqt/qtermwidget>=1.0.0 \
			x11/qt5/qtx11extras

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

.include <bsd.port.mk>
