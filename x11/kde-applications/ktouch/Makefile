# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:26 rsadowski Exp $

COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Declarative KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5KCMUtils KF5Package KF5Service KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickControls2
WANTLIB += Qt5QuickWidgets Qt5Sql Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += Qt5XmlPatterns SM X11 Xext c m xcb xcb-xkb

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/kde-applications/kqtquickcharts>=5 \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kcmutils \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n  \
		devel/kf5/kitemviews \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtxmlpatterns \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
