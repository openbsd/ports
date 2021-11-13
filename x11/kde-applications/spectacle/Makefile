# $OpenBSD: Makefile,v 1.22 2021/11/13 07:33:39 rsadowski Exp $

COMMENT =	KDE screen capture and screenshot program
DISTNAME =	spectacle-${VERSION}
CATEGORIES =	x11

HOMEPAGE =	https://www.kde.org/applications/graphics/spectacle/

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5GlobalAccel KF5I18n
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Kipi
WANTLIB += KF5NewStuff KF5NewStuffCore KF5Notifications KF5Purpose
WANTLIB += KF5PurposeWidgets KF5Service KF5Solid KF5WaylandClient
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 c m xcb xcb-cursor xcb-image
WANTLIB += xcb-render xcb-shape xcb-shm xcb-util xcb-xfixes

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	lang/python

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/purpose \
		devel/kf5/kwayland \
		x11/kde-applications/libkipi \
		x11/qt5/qtx11extras

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/kconf_update/50-clipboard_settings_change.py

.include <bsd.port.mk>
