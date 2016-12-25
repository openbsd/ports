# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:49 zhuk Exp $

COMMENT =	KDE configuration dialog for desktop notifications
DISTNAME =	knotifyconfig-${VERSION}

SHARED_LIBS =	KF5NotifyConfig		1.0

WANTLIB =  KF5Completion KF5ConfigCore KF5CoreAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets m phonon4qt5experimental

MODULES =	multimedia/phonon

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kio

TEST_DEPENDS =	devel/kf5/kconfigwidgets \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

BUILD_DEPENDS +=devel/kf5/kconfigwidgets \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=Yes

# for building knotifytest application, not installed
CONFIGURE_ARGS +=	-DBUILD_TESTING=Yes

TEST_NO = 	Yes

.include <bsd.port.mk>
