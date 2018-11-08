# $OpenBSD: Makefile,v 1.1.1.1 2018/11/08 06:59:26 rsadowski Exp $

COMMENT =	library for interfacing with CDs
DISTNAME =	libkcompactdisc-${VERSION}
PKGNAME =	libkcompactdisc-kf5-${VERSION}
CATEGORIES =	devel multimedia

KDE5 =		Yes

SHARED_LIBS +=  KF5CompactDisc            0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n KF5Solid Qt5Core
WANTLIB += Qt5DBus m

MODULES +=	multimedia/phonon

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS +=	devel/gettext

LIB_DEPENDS +=	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/solid

.include <bsd.port.mk>
