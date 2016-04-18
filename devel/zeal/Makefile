# $OpenBSD: Makefile,v 1.2 2016/04/18 16:57:04 jasper Exp $

COMMENT =	simple offline API documentation browser

GH_ACCOUNT =	zealdocs
GH_PROJECT =	zeal
GH_TAGNAME =	v0.2.1
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://zealdocs.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5WebKit Qt5WebKitWidgets
WANTLIB += Qt5Widgets Qt5X11Extras X11 archive c m pthread xcb
WANTLIB += xcb-keysyms

MODULES =	devel/qmake x11/qt5
RUN_DEPENDS =	devel/desktop-file-utils x11/gtk+3,-guic
LIB_DEPENDS =	archivers/libarchive

NO_TEST =	Yes

.include <bsd.port.mk>
