# $OpenBSD: Makefile,v 1.12 2019/05/20 22:15:06 naddy Exp $

COMMENT =		installation and loading of content packages in KDE
DISTNAME =		kpackage-${VERSION}

SHARED_LIBS =		KF5Package		5.3

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5CoreAddons KF5I18n
WANTLIB += Qt5Core Qt5DBus c m

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n

#The following tests FAILED:
# 2 - plasma-packagestructuretest (Failed)
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
