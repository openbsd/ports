UNLINKED = kf6
COMMENT =	holiday calculation library
DISTNAME =	kholidays-${VERSION}

SHARED_LIBS +=  KF6Holidays               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml m

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
