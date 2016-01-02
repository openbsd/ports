# $OpenBSD: Makefile,v 1.12 2016/01/02 21:06:45 sthen Exp $
COMMENT =		browser aiming to recreate classic Opera (12.x) UI using Qt5

GH_ACCOUNT =		OtterBrowser
GH_PROJECT =		otter-browser
V =			0.9.09pl0
# GH_TAGNAME =		v$V
# We grab a GH_COMMIT because upstream released hotfixes
# that we were asked to incorporate:
# - fixed checkboxes in content blocking manager
# - fixed saving dialog sizes
# - added extra fallback when looking for address field associated with tab
GH_COMMIT =		d1a1b0bbc8d80d0d7ed7a1fbbf83975a5ddea69e
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
