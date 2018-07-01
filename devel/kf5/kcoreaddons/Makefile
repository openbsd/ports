# $OpenBSD: Makefile,v 1.8 2018/07/01 18:33:35 espie Exp $

COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5CoreAddons		4.1

WANTLIB =	${COMPILER_LIBCXX} Qt5Core c fam m pthread

BUILD_DEPENDS =	misc/shared-mime-info
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	sysutils/gamin

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
