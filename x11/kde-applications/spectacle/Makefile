# $OpenBSD: Makefile,v 1.8 2020/05/26 05:17:20 rsadowski Exp $

COMMENT =	KDE screen capture and screenshot program
VERSION =	19.04.3
DISTNAME =	spectacle-${VERSION}
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/graphics/spectacle/

MASTER_SITES =	${MASTER_SITE_KDE:=stable/applications/${VERSION}/src/}

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5Declarative KF5I18n
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Kipi KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Notifications KF5Package KF5Purpose
WANTLIB += KF5PurposeWidgets KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml c m xcb xcb-cursor xcb-image xcb-render xcb-shape
WANTLIB += xcb-shm xcb-util xcb-xfixes

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	x11/qt5/qtquickcontrols
RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/purpose \
		x11/kde-applications/libkipi \
		x11/qt5/qtdeclarative \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
