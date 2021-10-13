# $OpenBSD: Makefile,v 1.20 2021/10/13 15:02:06 rsadowski Exp $

COMMENT =	KDE configuration dialog for desktop notifications
DISTNAME =	knotifyconfig-${VERSION}

SHARED_LIBS =	KF5NotifyConfig		6.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += X11 canberra m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		multimedia/phonon \
		x11/qt5/qtspeech

RUN_DEPENDS =	multimedia/phonon \
		x11/qt5/qtspeech

LIB_DEPENDS =	devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kjobwidgets>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DBUILD_TESTING=ON

.include <bsd.port.mk>
