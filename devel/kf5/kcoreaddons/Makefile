# $OpenBSD: Makefile,v 1.15 2020/09/11 14:51:07 rsadowski Exp $

COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5CoreAddons		6.0

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
