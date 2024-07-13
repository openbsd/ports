COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education

MODKDE_KF5 =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5IconThemes KF5ItemViews KF5KCMUtils
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns
WANTLIB += SM X11 Xext c m xcb xcb-xkb

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

#KQtQuickCharts, QtQuick plugin to render beautiful and interactive charts
RUN_DEPENDS =	x11/kde-applications/kqtquickcharts>=${MODKDE_VERSION} \
		x11/qt5/qtgraphicaleffects

LIB_DEPENDS =	devel/kf5/kcmutils \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/qt5/qtdeclarative \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns \
		x11/qt5/qtquickcontrols2

.include <bsd.port.mk>
