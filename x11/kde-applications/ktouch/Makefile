# $OpenBSD: Makefile,v 1.2 2018/06/27 21:04:13 espie Exp $

COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education
REVISION =	0

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Declarative KF5I18n KF5ItemViews KF5KCMUtils KF5Package
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Script Qt5Sql Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml Qt5XmlPatterns SM X11 Xext c m
WANTLIB += xcb xcb-xkb xkbfile

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	x11/kde-applications/kqtquickcharts>=5 \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols2 \
		devel/kf5/kdeclarative \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	x11/qt5/qtxmlpatterns \
		devel/kf5/kcmutils \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/ki18n  \
		devel/kf5/kitemviews

NO_TEST =	Yes

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
