# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}

SHARED_LIBS =	KF5CoreAddons		4.1

WANTLIB =	${COMPILER_LIBCXX} Qt5Core c fam m pthread

BUILD_DEPENDS =	misc/shared-mime-info
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	sysutils/gamin

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
