# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:50 rsadowski Exp $

COMMENT =	KDE wrapper over doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS =	KF5Su		4.3

WANTLIB += ${COMPILER_LIBCXX} ICE KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5Pty KF5Service Qt5Core SM X11 Xext c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kpty \
		devel/kf5/kservice

CONFIGURE_ARGS +=	-DKDESU_USE_DOAS_DEFAULT=Yes

.include <bsd.port.mk>
