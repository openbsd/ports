# $OpenBSD: Makefile,v 1.12 2021/01/19 06:16:31 rsadowski Exp $

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialBus               1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network c m

FLAVORS =		debug

.include <bsd.port.mk>
