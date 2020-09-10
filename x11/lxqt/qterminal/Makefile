# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:37 mariani Exp $

COMMENT =	lightweight Qt terminal emulator based on QTermWidget

VERSION =	0.15.0
REVISION =      0

NAME =		qterminal
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras X11 c m qtermwidget5 util

LIB_DEPENDS +=		x11/lxqt/qtermwidget \
			x11/qt5/qtx11extras

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

.include <bsd.port.mk>
