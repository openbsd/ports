# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:37 mariani Exp $

COMMENT =	image viewer and screenshot tool for LXQt

VERSION =	0.15.0
REVISION =      0

NAME =		lximage-qt
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5Widgets Qt5X11Extras SM X11
WANTLIB += Xext Xfixes c exif fm-qt gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 intl m menu-cache xcb

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/qt5/qtsvg \
			x11/lxqt/libfm-qt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

.include <bsd.port.mk>
