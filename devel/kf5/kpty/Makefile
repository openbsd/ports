# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =		interfacing with pseudo terminal devices in KDE
DISTNAME =		kpty-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Pty		2.0

WANTLIB += KF5CoreAddons KF5I18n ${COMPILER_LIBCXX} Qt5Core m util

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/ki18n

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_UTEMPTER=Yes

# TODO test stalls

.include <bsd.port.mk>
