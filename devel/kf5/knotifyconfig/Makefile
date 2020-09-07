# $OpenBSD: Makefile,v 1.15 2020/09/07 14:48:49 rsadowski Exp $

COMMENT =	KDE configuration dialog for desktop notifications
DISTNAME =	knotifyconfig-${VERSION}

SHARED_LIBS =	KF5NotifyConfig		6.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets m phonon4qt5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION}

LIB_DEPENDS =	devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kjobwidgets>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		multimedia/phonon

CONFIGURE_ARGS +=	-DBUILD_TESTING=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=ON

.include <bsd.port.mk>
