# $OpenBSD: Makefile,v 1.22 2021/11/16 14:30:59 rsadowski Exp $

COMMENT =	integration of QML and KDE workspaces
DISTNAME =	kdeclarative-${VERSION}

SHARED_LIBS =	KF5Declarative		7.0 # 5.17
SHARED_LIBS +=	KF5CalendarEvents	7.0 # 5.17
SHARED_LIBS +=	KF5QuickAddons		7.0 # 5.17

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5GlobalAccel KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Notifications
WANTLIB += KF5Package KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets Qt5Xml X11 c epoxy
WANTLIB += m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtquickcontrols \
		devel/kf5/kguiaddons>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kguiaddons>=${MODKF5_VERSION} \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kglobalaccel>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kpackage>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
