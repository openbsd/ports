# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:49 zhuk Exp $

COMMENT =		installation and loading of content packages in KDE
DISTNAME =		kpackage-${VERSION}

SHARED_LIBS =		KF5Package		1.0

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
