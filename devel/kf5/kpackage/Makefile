# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =		installation and loading of content packages in KDE
DISTNAME =		kpackage-${VERSION}

SHARED_LIBS =		KF5Package		2.0

WANTLIB += KF5Archive KF5CoreAddons KF5I18n Qt5Core c m

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/karchive \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

# TODO: The following tests FAILED (upstream fault?):
#          2 - plasma-packagestructuretest (Failed)

.include <bsd.port.mk>
