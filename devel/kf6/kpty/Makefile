COMMENT =		interfacing with pseudo terminal devices in KDE
DISTNAME =		kpty-${VERSION}

SHARED_LIBS +=  KF6Pty                    0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6CoreAddons KF6I18n Qt6Core m
WANTLIB += util

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
			devel/kf6/ki18n>=${MODKF6_VERSION}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_UTEMPTER=ON

# TODO test stalls

.include <bsd.port.mk>
