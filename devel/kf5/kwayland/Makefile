# $OpenBSD: Makefile,v 1.2 2021/11/13 12:04:14 rsadowski Exp $

COMMENT =	Qt API to interact with the wayland-client and -server
DISTNAME =	kwayland-${VERSION}
REVISION =	0

SHARED_LIBS +=  KF5WaylandClient   0.0
SHARED_LIBS +=  KF5WaylandServer   0.0

WANTLIB += ${COMPILER_LIBCXX} EGL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += c m wayland-client wayland-server


RUN_DEPENDS =		x11/qt5/qtwayland

BUILD_DEPENDS =		x11/qt5/qtwayland \
			wayland/wayland-protocols \
			wayland/plasma-wayland-protocols

LIB_DEPENDS =		wayland/wayland


.include <bsd.port.mk>
