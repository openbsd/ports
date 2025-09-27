COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} GL ICE KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6GuiAddons KF6I18n KF6ItemViews KF6KCMUtils KF6KCMUtilsCore
WANTLIB += KF6KCMUtilsQuick KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6QuickWidgets Qt6Sql Qt6Widgets
WANTLIB += Qt6Xml SM X11 Xext c m xcb xcb-xkb xkbcommon xml2

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

#KQtQuickCharts, QtQuick plugin to render beautiful and interactive charts
RUN_DEPENDS =	x11/kde-applications/kqtquickcharts>=${VERSION}

LIB_DEPENDS =	devel/kf6/kcmutils \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kitemviews \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		textproc/libxml \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
