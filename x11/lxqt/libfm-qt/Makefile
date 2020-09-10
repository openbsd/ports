# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:37 mariani Exp $

COMMENT =	qt binding for libfm

VERSION =	0.15.1
REVISION =      0

NAME =		libfm-qt
DISTNAME =	${NAME}-${VERSION}

SHARED_LIBS +=  fm-qt                     1.0 # 7.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += exif gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 intl
WANTLIB += m menu-cache xcb

LIB_DEPENDS +=		x11/qt5/qtx11extras \
			x11/menu-cache \
			graphics/libexif

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		misc/shared-mime-info

.include <bsd.port.mk>
