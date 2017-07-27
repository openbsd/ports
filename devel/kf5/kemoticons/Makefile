# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =	text emoticons to graphical emoticons KDE converter
DISTNAME =	kemoticons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Emoticons		2.0

WANTLIB =  KF5Archive KF5ConfigCore KF5CoreAddons KF5Service ${COMPILER_LIBCXX} Qt5Core
WANTLIB += Qt5Gui Qt5Xml m

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kservice

TEST_DEPENDS =	${BUILD_PKGPATH}

PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
