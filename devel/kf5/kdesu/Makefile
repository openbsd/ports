# $OpenBSD: Makefile,v 1.8 2018/10/22 20:30:42 rsadowski Exp $

COMMENT =	KDE wrapper over su/sudo/doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS =	KF5Su		4.2

WANTLIB += ${COMPILER_LIBCXX} ICE KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5Pty KF5Service Qt5Core SM X11 Xext c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kpty \
		devel/kf5/kservice

CONFIGURE_ARGS=	-DKDESU_USE_SUDO_DEFAULT=Yes
CONFIGURE_ENV =	'CXXFLAGS=${CXXFLAGS} -D__PATH_SUDO=\"/usr/bin/doas\"'

.include <bsd.port.mk>
