# $OpenBSD: Makefile,v 1.1.1.1 2021/11/22 06:49:52 rsadowski Exp $

COMMENT =	KIO Slave to access Google Drive
DISTNAME =	kio-gdrive-${VERSION}
CATEGORIES =	www

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Purpose KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KPimGAPICore KPimGAPIDrive Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets X11 m qt5keychain

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/purpose \
		devel/kf5/solid \
		security/qtkeychain \
		x11/kde-applications/libkgapi

.include <bsd.port.mk>
