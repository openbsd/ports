# qt5 webengine
USE_WXNEEDED =	Yes

COMMENT =	distraction-free Markdown editor

DISTNAME =	ghostwriter-${MODKDE_GEAR_VERSION}

CATEGORIES =	editors

HOMEPAGE =	https://ghostwriter.kde.org/

# GPLv3 code, CC BY-SA 4.0 resources
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5SonnetCore
WANTLIB += KF5SonnetUi KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Svg Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml c hunspell-1.7
WANTLIB += m

SITES =	${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}

MODULES =		x11/kde

MODKDE_KF5 =		Yes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet \
			textproc/hunspell \
			x11/qt5/qtbase \
			x11/qt5/qtdeclarative \
			x11/qt5/qtlocation \
			x11/qt5/qtsvg \
			x11/qt5/qtwebchannel \
			x11/qt5/qtwebengine

NO_TEST =		Yes


.include <bsd.port.mk>
