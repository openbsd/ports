# $OpenBSD: Makefile,v 1.14 2020/03/23 18:01:06 rsadowski Exp $

COMMENT =	integration of QML and KDE workspaces
DISTNAME =	kdeclarative-${VERSION}

SHARED_LIBS =	KF5Declarative		5.0 # 5.17
SHARED_LIBS +=	KF5CalendarEvents	5.0 # 5.17
SHARED_LIBS +=	KF5QuickAddons		5.0 # 5.17

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5CoreAddons KF5GlobalAccel KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Package KF5Service
WANTLIB += KF5WidgetsAddons KF5WindowSystem Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB += Qt5Xml c epoxy m

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
