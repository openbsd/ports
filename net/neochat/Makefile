COMMENT =	client for Matrix chat
DISTNAME =	neochat-${MODKDE_GEAR_VERSION}
CATEGORIES=	net

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	https://apps.kde.org/de/neochat/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6Crash KF6DBusAddons
WANTLIB += KF6I18n KF6IconThemes KF6ItemModels KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Notifications KF6Purpose
WANTLIB += KF6Service KF6Solid KF6SonnetCore KF6StatusNotifierItem
WANTLIB += KF6SyntaxHighlighting KF6WidgetsAddons KF6WindowSystem
WANTLIB += Kirigami KirigamiPlatform QCoro6Core QCoro6Network
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6Sql Qt6WebView Qt6Widgets QuotientQt6
WANTLIB += X11 c cmark icuuc m olm qt6keychain

MODULES =	x11/kde

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kitemmodels \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/sonnet \
		graphics/kquickimageeditor>=0.4 \
		devel/kf6/kquickcharts \
		graphics/kirigami-addons \
		x11/gtk+4,-guic \
		x11/qt5/qtlocation

BUILD_DEPENDS = devel/gettext,-tools \
		devel/kf6/kitemmodels \
		devel/kf6/qqc2-desktop-style \
		graphics/kquickimageeditor>=0.4 \
		devel/kf6/kquickcharts \
		graphics/kirigami-addons \
		x11/qt6/qtlocation \
		math/ecm

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kirigami \
		devel/kf6/kitemmodels \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/purpose \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/kf6/kiconthemes \
		devel/olm \
		devel/qcoro,qt6 \
		security/qtkeychain,qt6 \
		textproc/icu4c \
		textproc/cmark \
		x11/libquotient>=0.9 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtwebview

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
