USE_WXNEEDED =	Yes

COMMENT =	browser aiming to recreate classic Opera (12.x) UI using Qt

GH_ACCOUNT =	OtterBrowser
GH_PROJECT =	otter-browser
GH_COMMIT =	0d71a94773cb071b3c203ff40043e1d93efddc1b
DISTNAME =	otter-browser-1.0.81pre20261125

# https://github.com/OtterBrowser/otter-browser/compare/master...haydara:otter-browser:Qt6
# https://github.com/OtterBrowser/otter-browser/pull/1770
SITES.qt6 =	https://spacehopper.org/mirrors/
PATCHFILES.qt6 = otter-qt6-20260520.diff
PATCH_DIST_STRIP = -p1

CATEGORIES =	www

HOMEPAGE =	https://otter-browser.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c hunspell-1.7 m
WANTLIB += GL Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network
WANTLIB += Qt6OpenGL Qt6Positioning Qt6PrintSupport Qt6Qml Qt6Quick
WANTLIB += Qt6Svg Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml

MODULES =	devel/cmake x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils x11/gtk+4,-guic

LIB_DEPENDS =	textproc/hunspell \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg \
		x11/qt6/qtwebengine

CONFIGURE_ARGS = -DENABLE_QTWEBKIT=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
