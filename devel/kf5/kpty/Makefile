COMMENT =		interfacing with pseudo terminal devices in KDE
DISTNAME =		kpty-${VERSION}

SHARED_LIBS =		KF5Pty		6.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n Qt5Core m
WANTLIB += util

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_UTEMPTER=ON

# TODO test stalls

.include <bsd.port.mk>
