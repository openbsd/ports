# $OpenBSD: Makefile,v 1.7 2020/08/20 18:00:16 rsadowski Exp $

COMMENT =	library for interfacing with CDs
DISTNAME =	libkcompactdisc-${VERSION}
PKGNAME =	libkcompactdisc-kf5-${VERSION}
CATEGORIES =	devel multimedia
REVISION =	1

SHARED_LIBS +=  KF5CompactDisc            1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n KF5Solid Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets m phonon4qt5

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/solid \
		multimedia/phonon

.include <bsd.port.mk>
