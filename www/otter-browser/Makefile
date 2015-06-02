# $OpenBSD: Makefile,v 1.7 2015/06/02 08:16:20 sthen Exp $
ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =		browser aiming to recreate classic Opera (12.x) UI using Qt5

GH_ACCOUNT =		OtterBrowser
GH_PROJECT =		otter-browser
V =			0.9.05
REVISION =		1
#GH_TAGNAME =		v$V
# We were asked by upstream to release from the following commit
# as it contains fixes for crashes & serious issues
# - Adhere to cppcheck reports
# - #767 Browser isn't starting after "Toolbars > Reset to Defaults..."
# - Crash when cloning tab
# - #768 "Navigation Bar > Remove..." is not working
# - Escape ampersand for TabBarWidget
# - #769 Transfer completed notification was triggered on download stop
# - Fix check that could prevent configuration or removal of custom
#   toolbars
# - Small code refactorizations
# - Prevent crashes in modal dialog for cookie saving when more then
#   one is already stored
# - #779 build warning fixes (was not present in release code)
# - #190 Initial work for storing session data
# - Ensuring that bookmarks model always emits signals on modification
GH_COMMIT =		1ea5df13f908495df4ccccad9d634d997f6fd4c9

DISTNAME =		${GH_PROJECT}-$Vpl0

CATEGORIES =		www

HOMEPAGE =		http://otter-browser.org/

MAINTAINER =		Adam Wolk <adam.wolk@tintagel.pl>

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
