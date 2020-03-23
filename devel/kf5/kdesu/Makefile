# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:06 rsadowski Exp $

COMMENT =	KDE wrapper over doas commands
DISTNAME =	kdesu-${VERSION}

SHARED_LIBS =	KF5Su		5.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5Pty KF5Service Qt5Core SM X11 Xext c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kpty>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DKDESU_USE_DOAS_DEFAULT=Yes

.include <bsd.port.mk>
