# $OpenBSD: Makefile,v 1.2 2017/06/07 17:03:39 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	1.0 # 5.29

WANTLIB =		Qt5Core Qt5Gui dmtx m qrencode

LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode

NO_TEST =		Yes

.include <bsd.port.mk>
