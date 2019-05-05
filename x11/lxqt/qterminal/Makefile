# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

COMMENT =	lightweight Qt terminal emulator based on QTermWidget

VERSION =	0.9.0

NAME =		qterminal
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras X11 c m qtermwidget5 util

LIB_DEPENDS +=		x11/lxqt/qtermwidget \
			x11/qt5/qtx11extras

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/lxqt/l10n,-qterminal

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
