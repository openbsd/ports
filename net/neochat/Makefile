COMMENT =	client for Matrix chat
VERSION =	22.09
DISTNAME =	neochat-${VERSION}

CATEGORIES=	net

MASTER_SITES =	${MASTER_SITE_KDE:=stable/plasma-mobile/${VERSION}/}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Kirigami2 KF5Notifications KF5Service
WANTLIB += KF5Solid KF5WidgetsAddons KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Widgets
WANTLIB += Qt5Xml QtOlm Quotient X11 c cmark m olm qt5keychain

MODULES =	devel/kf5

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kitemmodels \
		devel/kf5/qqc2-desktop-style \
		devel/kf5/sonnet \
		graphics/kquickimageeditor>=0.2.0 \
		x11/gtk+3,-guic

BUILD_DEPENDS = devel/gettext,-tools \
		devel/kf5/kitemmodels \
		devel/kf5/qqc2-desktop-style \
		graphics/kquickimageeditor>=0.2.0 \
		devel/qcoro \
		math/ecm

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kcompletion \
		devel/kf5/kservice \
		devel/kf5/solid \
		devel/kf5/kjobwidgets \
		devel/kf5/kirigami2 \
		devel/kf5/knotifications \
		security/qtkeychain \
		textproc/cmark \
		x11/libqtolm \
		x11/libquotient \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtquickcontrols2

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
