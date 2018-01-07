# $OpenBSD: Makefile,v 1.8 2018/01/07 17:33:25 awolk Exp $

# qt5 webkit
USE_WXNEEDED =	Yes

COMMENT =	simple offline API documentation browser

GH_ACCOUNT =	zealdocs
GH_PROJECT =	zeal
GH_TAGNAME =	v0.5.0

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += archive c m sqlite3 xcb xcb-keysyms
WANTLIB += ${COMPILER_LIBCXX}

WANTLIB += ICE Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += archive c m sqlite3 xcb xcb-keysyms

MODULES =	devel/cmake x11/qt5
BUILD_DEPENDS =	devel/kf5/extra-cmake-modules
RUN_DEPENDS =	devel/desktop-file-utils x11/gtk+3,-guic
LIB_DEPENDS =	archivers/libarchive \
		x11/qt5/qtbase \
		x11/qt5/qtwebkit \
		x11/qt5/qtx11extras

NO_TEST =	Yes

.include <bsd.port.mk>
