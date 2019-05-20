# $OpenBSD: Makefile,v 1.12 2019/05/20 22:15:06 naddy Exp $

COMMENT =	KDE configuration dialog for desktop notifications
DISTNAME =	knotifyconfig-${VERSION}

SHARED_LIBS =	KF5NotifyConfig		4.3

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets m

MODULES =	multimedia/phonon

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kconfigwidgets \
		devel/kf5/knotifications \
		devel/kf5/kxmlgui

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

CONFIGURE_ARGS +=	-DBUILD_TESTING=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Qt5TextToSpeech=Yes \
			-DPhonon4Qt5_INCLUDE_DIR="${LOCALBASE}/include/phonon4qt5/"

.include <bsd.port.mk>
