COMMENT =	graphical equivalent of du
DISTNAME =	filelight-${VERSION}
CATEGORIES =	x11 sysutils

HOMEPAGE =	https://apps.kde.org/filelight

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons KF6XmlGui Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Widgets Qt6Xml c m

MODEKDE_KF5 = Yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/solid \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/kirigami \
		graphics/kirigami-addons \
		x11/kde-applications/kqtquickcharts>=${MODKDE_VERSION}

RUN_DEPENDS =	devel/kf6/qqc2-desktop-style \
		devel/kf6/kirigami \
		graphics/kirigami-addons \
		x11/kde-applications/kqtquickcharts>=${MODKDE_VERSION}

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
