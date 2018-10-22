# $OpenBSD: Makefile,v 1.7 2018/10/22 20:30:43 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	4.2 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick dmtx m qrencode

LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode \
			x11/qt5/qtdeclarative

.include <bsd.port.mk>
