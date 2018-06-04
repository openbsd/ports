# $OpenBSD: Makefile,v 1.6 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		bar code generator
DISTNAME =		prison-${VERSION}

SHARED_LIBS =		KF5Prison	4.1 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network dmtx m
WANTLIB += qrencode

LIB_DEPENDS =		graphics/libdmtx \
			graphics/libqrencode

.include <bsd.port.mk>
