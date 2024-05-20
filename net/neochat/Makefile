COMMENT =	client for Matrix chat
DISTNAME =	neochat-${MODKDE_VERSION}
CATEGORIES=	net

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

HOMEPAGE =	https://apps.kde.org/de/neochat/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6CoreAddons KF6DBusAddons
WANTLIB += KF6I18n KF6ItemModels KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Notifications KF6Service KF6Solid
WANTLIB += KF6SonnetCore KF6StatusNotifierItem KF6WidgetsAddons
WANTLIB += KF6WindowSystem Kirigami KirigamiPlatform Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6QuickControls2 Qt6Sql Qt6WebView Qt6Widgets
WANTLIB += QuotientQt6 X11 c cmark icuuc m olm qt6keychain

MODULES =	x11/kde-applications \
		devel/kf6

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kitemmodels \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/sonnet \
		graphics/kquickimageeditor>=0.2.0 \
		devel/kf6/kquickcharts \
		graphics/kirigami-addons \
		x11/gtk+4,-guic

BUILD_DEPENDS = devel/gettext,-tools \
		devel/kf6/kitemmodels \
		devel/kf6/qqc2-desktop-style \
		graphics/kquickimageeditor>=0.2.0 \
		devel/kf6/kquickcharts \
		devel/qcoro,qt6 \
		graphics/kirigami-addons \
		x11/qt6/qtlocation \
		math/ecm

LIB_DEPENDS =	devel/kf6/kconfig \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kcoreaddons \
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
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/olm \
		security/qtkeychain,qt6 \
		textproc/cmark \
		x11/libquotient>=0.7 \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtwebview

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
