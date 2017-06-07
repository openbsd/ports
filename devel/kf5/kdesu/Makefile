# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =	KDE wrapper over su/sudo/doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS =	KF5Su		2.0

WANTLIB =  ICE KF5ConfigCore KF5CoreAddons KF5I18n KF5Pty KF5Service
WANTLIB += Qt5Core SM X11 Xext c m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kpty \
		devel/kf5/kservice

CONFIGURE_ARGS=	-DKDESU_USE_SUDO_DEFAULT=Yes
CONFIGURE_ENV =	'CXXFLAGS=${CXXFLAGS} -D__PATH_SUDO=\"/usr/bin/doas\"'

NO_TEST = 	Yes

.include <bsd.port.mk>
