# $OpenBSD: Makefile,v 1.13 2021/11/15 21:23:32 rsadowski Exp $

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices

REVISION-main =		0
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialBus               1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

FLAVORS =		debug

.include <bsd.port.mk>
