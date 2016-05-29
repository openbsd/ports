# $OpenBSD: Makefile,v 1.2 2016/05/29 10:50:49 zhuk Exp $

COMMENT =		KDE safe desktop-wide storage for passwords
DISTNAME =		kwallet-${VERSION}
PKGNAME =		kf5-kwallet-${VERSION}

SHARED_LIBS =		KF5Wallet		0.0
SHARED_LIBS +=		kwalletbackend5		0.0

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5Gpgmepp KF5I18n KF5IconThemes
WANTLIB += KF5Notifications KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += X11 assuan c gcrypt gpg-error gpgme m pthread

# N.B.: Tell upstream to add explicit dependency on Boost
BUILD_DEPENDS =		devel/boost \
			devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/kiconthemes \
			devel/kf5/knotifications \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			security/libgcrypt \
			x11/kde-applications/gpgmepp

.include <bsd.port.mk>
