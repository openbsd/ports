# $OpenBSD: Makefile,v 1.9 2020/03/13 16:53:51 rsadowski Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth              2.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

FLAVORS =		debug

.include <bsd.port.mk>
