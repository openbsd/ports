# $OpenBSD: Makefile,v 1.6 2017/10/26 07:53:23 rsadowski Exp $

COMMENT =		KDE safe desktop-wide storage for passwords
DISTNAME =		kwallet-${VERSION}
PKGNAME =		kf5-kwallet-${VERSION}

SHARED_LIBS =		KF5Wallet		3.0
SHARED_LIBS +=		kwalletbackend5		3.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5Notifications KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += c gcrypt m

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
			security/libgcrypt

CONFIGURE_ARGS =      -DCMAKE_DISABLE_FIND_PACKAGE_Gpgmepp=Yes

.include <bsd.port.mk>
