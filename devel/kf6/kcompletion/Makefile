COMMENT =	text completion support for Qt-based apps
DISTNAME =	kcompletion-${VERSION}

SHARED_LIBS +=  KF6Completion             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ConfigCore KF6ConfigGui
WANTLIB += KF6WidgetsAddons Qt6Core Qt6Gui Qt6Widgets m

LIB_DEPENDS =	devel/kf6/kcodecs>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION}

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
