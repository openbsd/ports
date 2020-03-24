# $OpenBSD: Makefile,v 1.22 2020/03/24 07:02:33 ajacoutot Exp $

COMMENT =	KTorrent engine

DISTNAME =	libktorrent-2.1.1
REVISION =	0

CATEGORIES =	net

SHARED_LIBS +=  KF5Torrent                0.0 # 6.0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml gcrypt gmp m qca-qt5

MASTER_SITES =	${MASTER_SITE_KDE:=stable/ktorrent/5.1.2/}

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools

LIB_DEPENDS =	devel/gmp \
		devel/kf5/karchive \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/solid \
		security/libgcrypt \
		security/qca-qt5

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
