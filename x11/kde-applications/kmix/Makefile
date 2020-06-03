# $OpenBSD: Makefile,v 1.4 2020/06/03 05:13:41 rsadowski Exp $

COMMENT =	sound channel mixer and volume control
DISTNAME =	kmix-${VERSION}
CATEGORIES =	audio
REVISION =	1

HOMEPAGE =	https://kde.org/applications/multimedia/org.kde.kmix

SHARED_LIBS +=  kmixcore                1.0 # 5.13.80

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5Notifications KF5Package
WANTLIB += KF5Plasma KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += c canberra glib-2.0 m pulse pulse-mainloop-glib

MODULES +=	x11/kde-applications \
		multimedia/phonon

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf5/kinit
RUN_DEPENDS =	devel/kf5/kinit

LIB_DEPENDS =	audio/libcanberra \
		devel/glib2 \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/plasma-framework

.include <bsd.port.mk>
