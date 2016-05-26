# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}

SHARED_LIBS =	KF5CoreAddons		0.0

WANTLIB =	Qt5Core c fam m pthread

BUILD_DEPENDS =	misc/shared-mime-info
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	sysutils/gamin

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
