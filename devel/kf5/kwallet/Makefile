# $OpenBSD: Makefile,v 1.5 2017/07/27 09:34:38 sthen Exp $

COMMENT =		KDE safe desktop-wide storage for passwords
DISTNAME =		kwallet-${VERSION}
PKGNAME =		kf5-kwallet-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Wallet		2.0
SHARED_LIBS +=		kwalletbackend5		2.0

WANTLIB += KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5I18n KF5IconThemes KF5Notifications
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem ${COMPILER_LIBCXX} Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets Qt5Xml X11 c gcrypt m pthread


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
