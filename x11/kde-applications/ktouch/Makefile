COMMENT =	KDE typing learning tool
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5IconThemes KF5ItemViews KF5KCMUtils
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns
WANTLIB += SM X11 Xext c m xcb xcb-xkb

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/kde-applications/kqtquickcharts>=5 \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kcmutils \
		devel/kf5/ki18n  \
		devel/kf5/kitemviews \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2 \
		x11/qt5/qtxmlpatterns \
		x11/qt5/qtx11extras

.include <bsd.port.mk>
