# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =		interfacing with pseudo terminal devices in KDE
DISTNAME =		kpty-${VERSION}

SHARED_LIBS =		KF5Pty		2.0

WANTLIB += KF5CoreAddons KF5I18n Qt5Core m util

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/ki18n

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_UTEMPTER=Yes

# TODO test stalls

.include <bsd.port.mk>
