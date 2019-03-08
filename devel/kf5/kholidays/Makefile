# $OpenBSD: Makefile,v 1.4 2019/03/08 20:00:43 cwen Exp $

COMMENT =		holiday calculation library
DISTNAME =		kholidays-${VERSION}
REVISION =		0

SHARED_LIBS +=  KF5Holidays               0.2 # 5.43

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml m

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
