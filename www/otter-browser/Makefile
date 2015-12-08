# $OpenBSD: Makefile,v 1.10 2015/12/08 13:55:01 sthen Exp $
COMMENT =		browser aiming to recreate classic Opera (12.x) UI using Qt5

GH_ACCOUNT =		OtterBrowser
GH_PROJECT =		otter-browser
V =			0.9.08
GH_TAGNAME =		v$V

DISTNAME =		${GH_PROJECT}-$V

CATEGORIES =		www

HOMEPAGE =		http://otter-browser.org/

MAINTAINER =		Adam Wolk <adam.wolk@tintagel.pl>

# License GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB +=		Qt5Network Qt5PrintSupport Qt5Script
WANTLIB +=		Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5XmlPatterns

RUN_DEPENDS =		devel/desktop-file-utils x11/gtk+3,-guic

MODULES =		devel/cmake x11/qt5

NO_TEST =	Yes

.include <bsd.port.mk>
