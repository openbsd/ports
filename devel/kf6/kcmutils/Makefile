COMMENT =	utility classes for KDE control modules
DISTNAME =	kcmutils-${VERSION}

SHARED_LIBS +=  KF6KCMUtils               0.0 # 0.0
SHARED_LIBS +=  KF6KCMUtilsCore           0.0 # 0.0
SHARED_LIBS +=  KF6KCMUtilsQuick          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6GuiAddons
WANTLIB += KF6I18n KF6I18nQml KF6ItemViews KF6KIOCore KF6KIOGui
WANTLIB += KF6Service KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6QuickWidgets Qt6Widgets
WANTLIB += Qt6Xml c m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION} \
		devel/kf6/kitemviews>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kxmlgui>=${MODKF6_VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
