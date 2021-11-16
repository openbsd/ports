# $OpenBSD: Makefile,v 1.25 2021/11/16 14:30:59 rsadowski Exp $

COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}

SHARED_LIBS =	KF5CoreAddons		7.3

WANTLIB =	${COMPILER_LIBCXX} Qt5Core c fam m pthread

BUILD_DEPENDS =	misc/shared-mime-info
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	sysutils/gamin

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

#The following tests FAILED:
#5 - kformattest (Failed)
#22 - kdirwatch_fam_unittest (Child aborted)
#23 - kdirwatch_qfswatch_unittest (Failed)

.include <bsd.port.mk>
