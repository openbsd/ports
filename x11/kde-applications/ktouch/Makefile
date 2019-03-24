# $OpenBSD: Makefile,v 1.7 2019/03/24 11:57:03 rsadowski Exp $

COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education
REVISION =	0


WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Declarative KF5I18n KF5ItemViews KF5KCMUtils KF5Package
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Script Qt5Sql Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml Qt5XmlPatterns SM X11 Xext c m
WANTLIB += xcb xcb-xkb xkbfile

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=x11/qt5/qtquickcontrols

RUN_DEPENDS +=	x11/kde-applications/kqtquickcharts>=5 \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtquickcontrols2

LIB_DEPENDS +=	devel/kf5/kcmutils \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n  \
		devel/kf5/kitemviews \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/qt5/qtxmlpatterns \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
