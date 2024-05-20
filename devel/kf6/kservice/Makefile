COMMENT =	plugin framework for KDE desktop services
DISTNAME =	kservice-${VERSION}

SHARED_LIBS +=  KF6Service                0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6ConfigCore KF6CoreAddons KF6I18n
WANTLIB += Qt6Core Qt6Xml c m

BUILD_DEPENDS =	devel/bison \
		devel/gettext,-tools \
		devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION}

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION}

CONFIGURE_ARGS +=	-DAPPLICATIONS_MENU_NAME="kf6-applications.menu"

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
