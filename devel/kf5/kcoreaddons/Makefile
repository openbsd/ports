# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}

SHARED_LIBS =	KF5CoreAddons		2.0

WANTLIB =	Qt5Core c fam m pthread

BUILD_DEPENDS =	misc/shared-mime-info
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	sysutils/gamin

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
