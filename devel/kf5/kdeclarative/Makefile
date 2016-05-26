# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =	integration of QML and KDE workspaces
DISTNAME =	kdeclarative-${VERSION}

SHARED_LIBS =	KF5Declarative		0.0 # 5.17
SHARED_LIBS +=	KF5CalendarEvents	0.0 # 5.17
SHARED_LIBS +=	KF5QuickAddons		0.0 # 5.17

WANTLIB =  KF5Completion KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Package KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets Qt5Xml c epoxy m

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/kguiaddons

RUN_DEPENDS =	devel/kf5/kguiaddons

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kpackage \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
