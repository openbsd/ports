# $OpenBSD: Makefile,v 1.23 2020/06/08 19:41:16 rsadowski Exp $

COMMENT =	KTorrent engine

DISTNAME =	libktorrent-2.2.0

CATEGORIES =	net

SHARED_LIBS +=  KF5Torrent                1.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += gcrypt gmp m qca-qt5

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/ktorrent/5.2.0/}

MODULES =	devel/kf5

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
		devel/kf5/solid \
		security/libgcrypt \
		security/qca-qt5

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
