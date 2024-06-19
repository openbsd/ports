COMMENT =	KDE icon GUI utility library
DISTNAME =	kiconthemes-${VERSION}

SHARED_LIBS +=  KF6IconThemes             0.0 # 0.0
SHARED_LIBS +=  KF6IconWidgets            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6BreezeIcons KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6I18n
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6Svg Qt6Widgets
WANTLIB += c m xkbcommon

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/breeze-icons>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
