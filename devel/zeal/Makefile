# $OpenBSD: Makefile,v 1.12 2018/06/29 22:16:11 espie Exp $

# qt5 webkit
USE_WXNEEDED =	Yes

COMMENT =	simple offline API documentation browser

V =	0.6.0
DISTNAME = zeal-${V}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += archive c m sqlite3 xcb xcb-keysyms
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/zealdocs/zeal/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

MODULES =	devel/cmake x11/qt5
BUILD_DEPENDS =	devel/kf5/extra-cmake-modules
RUN_DEPENDS =	devel/desktop-file-utils x11/gtk+3,-guic
LIB_DEPENDS =	archivers/libarchive \
		x11/qt5/qtbase \
		x11/qt5/qtwebkit \
		x11/qt5/qtx11extras

NO_TEST =	Yes

.include <bsd.port.mk>
