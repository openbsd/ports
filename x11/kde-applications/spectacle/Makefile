# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 17:17:45 rsadowski Exp $

COMMENT =	KDE screen capture and screenshot program
DISTNAME =	spectacle-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://www.kde.org/applications/graphics/spectacle/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5Declarative KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Notifications KF5Package KF5Purpose KF5PurposeWidgets
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Quick Qt5Widgets Qt5X11Extras Qt5Xml c m
WANTLIB += xcb xcb-cursor xcb-image xcb-render xcb-shape xcb-shm
WANTLIB += xcb-util xcb-xfixes

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/kf5/kdoctools \
		x11/qt5/qtquickcontrols

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kpackage \
		devel/kf5/purpose \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
