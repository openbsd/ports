# $OpenBSD: Makefile,v 1.5 2017/07/27 09:34:38 sthen Exp $

COMMENT =	KDE configuration dialog for desktop notifications
DISTNAME =	knotifyconfig-${VERSION}
REVISION =	1

SHARED_LIBS =	KF5NotifyConfig		2.0

WANTLIB =  KF5Completion KF5ConfigCore KF5CoreAddons KF5I18n KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Service KF5WidgetsAddons
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets m phonon4qt5experimental

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
