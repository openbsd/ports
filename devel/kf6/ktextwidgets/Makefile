UNLINKED = kf6
COMMENT =	text editing widgets for KDE
DISTNAME =	ktextwidgets-${VERSION}

SHARED_LIBS +=  KF6TextWidgets            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6I18n
WANTLIB += KF6SonnetCore KF6SonnetUi KF6WidgetsAddons Qt6Core
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6TextToSpeech Qt6Widgets
WANTLIB += m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/sonnet>=${MODKF6_VERSION} \
		x11/qt6/qtspeech

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
