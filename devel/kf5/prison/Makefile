# $OpenBSD: Makefile,v 1.8 2019/03/08 20:00:43 cwen Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Prison	4.2 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick dmtx m qrencode

LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode \
			x11/qt5/qtdeclarative

.include <bsd.port.mk>
