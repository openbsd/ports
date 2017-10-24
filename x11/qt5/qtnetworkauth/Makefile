# $OpenBSD: Makefile,v 1.5 2017/10/24 10:12:19 rsadowski Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth		0.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

FLAVORS =		debug

.include <bsd.port.mk>
