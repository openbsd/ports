COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5CoreAddons		7.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus c fam m

BUILD_DEPENDS =	misc/shared-mime-info
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	sysutils/gamin

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

#The following tests FAILED:
#5 - kformattest (Failed)
#22 - kdirwatch_fam_unittest (Child aborted)
#23 - kdirwatch_qfswatch_unittest (Failed)

.include <bsd.port.mk>
