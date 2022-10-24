# qt5 webengine
USE_WXNEEDED =	Yes

COMMENT =	distraction-free Markdown editor

GH_ACCOUNT =	KDE
GH_PROJECT =	ghostwriter
GH_COMMIT =	151268bcfdca57bba4944caa7172dde9549f0622
DISTNAME =	ghostwriter-2.2.0

CATEGORIES =	editors

HOMEPAGE =	https://ghostwriter.kde.org/

# GPLv3 code, CC BY-SA 4.0 resources
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Svg Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets c hunspell-1.7 m

USE_GMAKE =	Yes

MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtbase \
			x11/qt5/qtsvg \
			x11/qt5/qtwebengine

NO_TEST =		Yes

pre-configure:
	@sed -i 's,/share/man/man1,/man/man1,' \
		${WRKSRC}/ghostwriter.pro

.include <bsd.port.mk>
