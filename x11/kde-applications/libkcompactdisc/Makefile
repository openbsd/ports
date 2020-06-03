# $OpenBSD: Makefile,v 1.6 2020/06/03 05:13:44 rsadowski Exp $

COMMENT =	library for interfacing with CDs
DISTNAME =	libkcompactdisc-${VERSION}
PKGNAME =	libkcompactdisc-kf5-${VERSION}
CATEGORIES =	devel multimedia
REVISION =	0

SHARED_LIBS +=  KF5CompactDisc            1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n KF5Solid Qt5Core
WANTLIB += Qt5DBus m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications \
		multimedia/phonon

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/solid

.include <bsd.port.mk>
