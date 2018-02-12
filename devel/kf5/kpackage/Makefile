# $OpenBSD: Makefile,v 1.7 2018/02/12 19:35:37 rsadowski Exp $

COMMENT =		installation and loading of content packages in KDE
DISTNAME =		kpackage-${VERSION}

SHARED_LIBS =		KF5Package		5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5CoreAddons KF5I18n
WANTLIB += Qt5Core c m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/karchive \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
