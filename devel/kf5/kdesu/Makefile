# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	KDE wrapper over su/sudo/doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS =	KF5Su		0.0

WANTLIB =  ICE KF5ConfigCore KF5CoreAddons KF5I18n KF5Pty KF5Service
WANTLIB += Qt5Core SM X11 Xext c m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kpty \
		devel/kf5/kservice

CONFIGURE_ARGS=	-DKDESU_USE_SUDO_DEFAULT=Yes
CONFIGURE_ENV =	'CXXFLAGS=${CXXFLAGS} -D__PATH_SUDO=\"/usr/bin/doas\"'

.include <bsd.port.mk>
