# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =	text emoticons to graphical emoticons KDE converter
DISTNAME =	kemoticons-${VERSION}

SHARED_LIBS =	KF5Emoticons		2.0

WANTLIB =  KF5Archive KF5ConfigCore KF5CoreAddons KF5Service Qt5Core
WANTLIB += Qt5Gui Qt5Xml m

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kservice

TEST_DEPENDS =	${BUILD_PKGPATH}

PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
