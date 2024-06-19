COMMENT =		widgets for KDE configuration dialogs
DISTNAME =		kconfigwidgets-${VERSION}

SHARED_LIBS +=  KF6ConfigWidgets          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6GuiAddons KF6I18n KF6WidgetsAddons
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Widgets m xkbcommon

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION}

LIB_DEPENDS =	devel/kf6/kcodecs>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		x11/xkbcommon

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
