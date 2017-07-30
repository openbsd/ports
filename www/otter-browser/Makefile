# $OpenBSD: Makefile,v 1.25 2017/07/30 14:56:23 espie Exp $

COMMENT =		browser aiming to recreate classic Opera (12.x) UI using Qt5

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=otter-browser/}
DISTNAME =		otter-browser-0.9.12
REVISION =		2

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		www

HOMEPAGE =		http://otter-browser.org/

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# License GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB +=		c m pthread Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB +=		Qt5Network Qt5PrintSupport Qt5Qml Qt5WebKit
WANTLIB +=		Qt5WebKitWidgets Qt5Widgets Qt5XmlPatterns
WANTLIB +=		hunspell-1.6 X11


RUN_DEPENDS =		devel/desktop-file-utils x11/gtk+3,-guic
LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtdeclarative \
			x11/qt5/qtmultimedia \
			x11/qt5/qtwebkit \
			x11/qt5/qtxmlpatterns

MODULES =		devel/cmake x11/qt5

NO_TEST =	Yes

.include <bsd.port.mk>
