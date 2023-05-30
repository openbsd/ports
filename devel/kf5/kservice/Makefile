COMMENT =	plugin framework for KDE desktop services
DISTNAME =	kservice-${VERSION}

SHARED_LIBS =	KF5Service		8.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5DBusAddons
WANTLIB += KF5I18n Qt5Core Qt5DBus Qt5Xml c m

BUILD_DEPENDS =	devel/bison \
		devel/gettext,-tools \
		devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kdoctools>=${MODKF5_VERSION}

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DAPPLICATIONS_MENU_NAME="kf5-applications.menu"

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
