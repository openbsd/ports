# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:29 rsadowski Exp $

COMMENT =	KDE monitoring of Zeroconf services
DISTNAME =	zeroconf-ioslave-${VERSION}
CATEGORIES =	net

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5DBusAddons
WANTLIB += KF5DNSSD KF5I18n KF5KIOCore KF5Service Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Network m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdnssd \
		devel/kf5/ki18n \
		devel/kf5/kio\
		devel/kf5/kservice

.include <bsd.port.mk>
