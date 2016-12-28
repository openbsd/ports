# $OpenBSD: Makefile,v 1.1.1.1 2016/12/28 07:57:36 zhuk Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	0.0 # 5.29

WANTLIB =		Qt5Core Qt5Gui dmtx m qrencode

LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode

.include <bsd.port.mk>
