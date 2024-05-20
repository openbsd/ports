COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}

SHARED_LIBS +=  KF6Style                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6ColorScheme KF6ConfigCore
WANTLIB += KF6CoreAddons KF6I18n KF6IconThemes KF6NewStuffCore
WANTLIB += KF6Notifications KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Widgets c m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kpackage>=${MODKF6_VERSION}

RUN_DEPENDS =	fonts/noto/fonts

LIB_DEPENDS =	devel/kf6/attica>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kiconthemes>=${MODKF6_VERSION} \
		devel/kf6/knewstuff>=${MODKF6_VERSION} \
		devel/kf6/knotifications>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_AppStreamQt=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_packagekitqt5=ON

PORTHOME =	${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
