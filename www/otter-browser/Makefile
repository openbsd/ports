# $OpenBSD: Makefile,v 1.4 2015/04/05 13:13:38 sthen Exp $
ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =		browser aiming to recreate classic Opera (12.x) UI using Qt5

GH_ACCOUNT =		OtterBrowser
GH_PROJECT =		otter-browser
V =			0.9.04
#GH_TAGNAME =		v$V
# We were asked by upstream to release from the following commit instead of
# the tag as it's considered an important fix affecting the majority of users.
GH_COMMIT =		23d7ee6f9cd636e750687a01975b177c1c9c2e53

DISTNAME =		${GH_PROJECT}-$Vpl0

CATEGORIES =		www

HOMEPAGE =		http://otter-browser.org/

MAINTAINER =		Adam Wolk <adam.wolk@koparo.com>

# License GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread Qt5Core Qt5Gui Qt5Multimedia
WANTLIB +=		Qt5Network Qt5PrintSupport Qt5Script
WANTLIB +=		Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets

RUN_DEPENDS =		devel/desktop-file-utils x11/gtk+3,-guic

# Dependencies
#
MODULES =		devel/cmake x11/qt5

NO_TEST =	Yes

.include <bsd.port.mk>
