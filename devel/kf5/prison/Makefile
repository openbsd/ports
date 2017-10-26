# $OpenBSD: Makefile,v 1.4 2017/10/26 07:53:23 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	2.0 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui dmtx m qrencode


LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode

.include <bsd.port.mk>
