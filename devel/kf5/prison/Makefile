# $OpenBSD: Makefile,v 1.5 2018/01/09 21:10:40 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	3.0 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui dmtx m qrencode


LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode

.include <bsd.port.mk>
