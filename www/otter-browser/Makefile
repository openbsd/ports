# $OpenBSD: Makefile,v 1.20 2016/12/06 13:00:19 awolk Exp $

COMMENT =		browser aiming to recreate classic Opera (12.x) UI using Qt5

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=otter-browser/}
DISTNAME =		otter-browser-0.9.12-dev152
PKGNAME =		${DISTNAME:S/-dev/pre/}

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		www

HOMEPAGE =		http://otter-browser.org/

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# License GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB +=		Qt5Network Qt5PrintSupport Qt5Qml Qt5WebKit
WANTLIB +=		Qt5WebKitWidgets Qt5Widgets Qt5XmlPatterns
WANTLIB +=		hunspell-1.3


RUN_DEPENDS =		devel/desktop-file-utils x11/gtk+3,-guic
LIB_DEPENDS =		textproc/hunspell

MODULES =		devel/cmake x11/qt5

NO_TEST =	Yes

.include <bsd.port.mk>
