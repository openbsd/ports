# $OpenBSD: Makefile,v 1.7 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	text emoticons to graphical emoticons KDE converter
DISTNAME =	kemoticons-${VERSION}

SHARED_LIBS =	KF5Emoticons		4.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5ConfigCore KF5CoreAddons
WANTLIB += KF5Service Qt5Core Qt5DBus Qt5Gui Qt5Xml m

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kservice

TEST_DEPENDS =	${BUILD_PKGPATH}

PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
