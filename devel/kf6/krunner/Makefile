COMMENT =	KDE framework for Plasma runners
DISTNAME =	krunner-${VERSION}

SHARED_LIBS +=  KF6Runner                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6CoreAddons KF6I18n
WANTLIB += KF6ItemModels Qt6Core Qt6DBus Qt6Gui m

BUILD_DEPENDS =	devel/gettext,-tools \
		archivers/gtar

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kitemmodels>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION}

# sucks (dbus)
TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
