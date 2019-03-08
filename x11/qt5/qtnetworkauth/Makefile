# $OpenBSD: Makefile,v 1.6 2019/03/08 20:00:49 cwen Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth		0.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

FLAVORS =		debug

.include <bsd.port.mk>
