# $OpenBSD: Makefile,v 1.7 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components
REVISION-main =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth		0.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

FLAVORS =		debug

.include <bsd.port.mk>
