# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:04 sthen Exp $

# qt5 webkit
USE_WXNEEDED =	Yes

COMMENT =	simple offline API documentation browser

V =	0.6.1
DISTNAME = zeal-${V}
REVISION = 0

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5X11Extras
WANTLIB += SM X11 Xext archive c m sqlite3 xcb xcb-keysyms

MASTER_SITES =	https://github.com/zealdocs/zeal/releases/download/v${V}/

EXTRACT_SUFX =	.tar.xz

MODULES =	devel/kf5

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS +=	archivers/libarchive \
		databases/sqlite3 \
		x11/qt5/qtwebkit \
		x11/qt5/qtx11extras

NO_TEST =	Yes

.include <bsd.port.mk>
