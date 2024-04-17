COMMENT =	classes to read and interact with KColorScheme
DISTNAME =	kcolorscheme-${VERSION}

SHARED_LIBS +=  KF6ColorScheme            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6GuiAddons
WANTLIB += KF6I18n Qt6Core Qt6Gui m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION}

LIB_DEPENDS =	devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION}

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
