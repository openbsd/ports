# $OpenBSD: Makefile,v 1.3 2022/02/13 08:34:52 rsadowski Exp $

COMMENT =		Breeze KDE desktop theme
DISTNAME =		breeze-${VERSION}

SHARED_LIBS +=  breezecommon5         1.0 # 5.12.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GuiAddons
WANTLIB += KF5I18n KF5IconThemes KF5KCMUtils KF5Service KF5Style
WANTLIB += KF5WidgetsAddons KF5WindowSystem Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c kdecorations2 m xcb

MODKDE5_TRANSLATIONS = Yes
MODKDE5_ICON_CACHE = Yes

BUILD_DEPENDS =		devel/kf5/kpackage

RUN_DEPENDS =		devel/kf5/kpackage \
			devel/kf5/breeze-icons

LIB_DEPENDS =		devel/kf5/frameworkintegration \
			devel/kf5/kauth \
			devel/kf5/kcmutils \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kservice \
			devel/kf5/kwindowsystem \
			x11/kde-plasma/kdecoration \
			x11/qt5/qtdeclarative \
			x11/qt5/qtx11extras

.include <bsd.port.mk>
