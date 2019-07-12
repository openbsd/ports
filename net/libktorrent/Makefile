# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:30 sthen Exp $

COMMENT =	KTorrent engine

DISTNAME =	libktorrent-2.1
REVISION =	1

CATEGORIES =	net

SHARED_LIBS +=  KF5Torrent                0.0 # 6.0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Widgets Qt5Xml gcrypt
WANTLIB += gmp m qca-qt5

MASTER_SITES =	${MASTER_SITE_KDE:=stable/ktorrent/5.1/}

MODULES =		devel/kf5

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools

LIB_DEPENDS =	devel/gmp \
		security/libgcrypt \
		security/qca-qt5 \
		devel/kf5/karchive \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/solid

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

.include <bsd.port.mk>
