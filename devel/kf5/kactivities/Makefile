# $OpenBSD: Makefile,v 1.6 2017/07/27 09:34:37 sthen Exp $

COMMENT =	core components for the KDE Activity concept
DISTNAME =	kactivities-${VERSION}
PKGNAME =	kf5-${DISTNAME}
REVISION =	1

SHARED_LIBS =	KF5Activities		2.0

WANTLIB += KF5ConfigCore KF5CoreAddons KF5KIOCore KF5Service ${COMPILER_LIBCXX} Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql c
WANTLIB += m

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools

# oversight of upstream, not used
BUILD_DEPENDS+=	devel/kf5/kwindowsystem

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kio \
		x11/qt5/qtdeclarative

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include -DBOOST_NO_EXCEPTIONS=1"

# please CMake
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0048=OLD

NO_TEST =	Yes

.include <bsd.port.mk>
