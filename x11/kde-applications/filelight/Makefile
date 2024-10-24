COMMENT =	graphical equivalent of du
DISTNAME =	filelight-${VERSION}
CATEGORIES =	x11 sysutils

HOMEPAGE =	https://apps.kde.org/filelight

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6CoreAddons KF6Crash KF6I18n KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Service KF6Solid
WANTLIB += KF6WidgetsAddons Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick Qt6QuickControls2
WANTLIB += Qt6Widgets c m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kitemviews \
		devel/kf6/solid \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/kirigami \
		graphics/kirigami-addons \
		x11/kde-applications/kqtquickcharts>=${MODKDE_GEAR_VERSION}

RUN_DEPENDS =	devel/kf6/qqc2-desktop-style \
		devel/kf6/kirigami \
		graphics/kirigami-addons \
		x11/kde-applications/kqtquickcharts>=${MODKDE_GEAR_VERSION}

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kcrash \
		devel/kf6/kcoreaddons \
		devel/kf6/kconfig \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
