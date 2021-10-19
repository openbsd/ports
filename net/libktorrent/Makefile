# $OpenBSD: Makefile,v 1.30 2021/10/19 20:08:35 rsadowski Exp $

COMMENT =	KTorrent engine

DISTNAME =	libktorrent-${MODKDE_VERSION}

CATEGORIES =	net

SHARED_LIBS +=  KF5Torrent                3.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml X11 gcrypt gmp m qca-qt5

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}

MODULES =	x11/kde-applications \
		devel/kf5

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf5/kauth \
		devel/kf5/kbookmarks\
		devel/kf5/kcodecs \
		devel/kf5/kcrash

RUN_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks\
		devel/kf5/kcodecs \
		devel/kf5/kcrash

LIB_DEPENDS =	devel/gmp \
		devel/kf5/karchive \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets\
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/solid \
		security/libgcrypt \
		security/qca-qt5

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
