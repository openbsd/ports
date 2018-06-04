# $OpenBSD: Makefile,v 1.2 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =		holiday calculation library
DISTNAME =		kholidays-${VERSION}

SHARED_LIBS +=  KF5Holidays               0.1 # 5.43

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
