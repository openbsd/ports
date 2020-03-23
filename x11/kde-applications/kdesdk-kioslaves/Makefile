# $OpenBSD: Makefile,v 1.2 2020/03/23 18:01:19 rsadowski Exp $

COMMENT =	development-related KIO modules
DISTNAME =	kdesdk-kioslaves-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://kde.org/applications/development/

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Network m

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications \
		perl

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice

.include <bsd.port.mk>
