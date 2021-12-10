# $OpenBSD: Makefile,v 1.10 2021/12/10 06:57:39 rsadowski Exp $

COMMENT =	library for interfacing with CDs
DISTNAME =	libkcompactdisc-${VERSION}
PKGNAME =	libkcompactdisc-kf5-${VERSION}
CATEGORIES =	devel multimedia
REVISION =	0

SHARED_LIBS +=  KF5CompactDisc            2.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5Solid Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets m phonon4qt5

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/solid \
		multimedia/phonon

.include <bsd.port.mk>
