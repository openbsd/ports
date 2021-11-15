# $OpenBSD: Makefile,v 1.10 2021/11/15 21:23:31 rsadowski Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components

REVISION-main =		0
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth              2.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

FLAVORS =		debug

.include <bsd.port.mk>
