COMMENT =	core KDE extensions to Qt classes
DISTNAME =	kcoreaddons-${VERSION}

SHARED_LIBS =	KF5CoreAddons		9.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus c m

WANTLIB += lib/inotify/inotify

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	misc/shared-mime-info \
		sysutils/accountsservice

LIB_DEPENDS =		devel/libinotify

# for tests
PORTHOME =		${WRKDIR}
TESTS_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# gamin is totally unmaintained low quality software
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_FAM=ON

CONFIGURE_ARGS +=	-DACCOUNTS_SERVICE_ICON_DIR=${VARBASE}/db/AccountsService/icons

.include <bsd.port.mk>
