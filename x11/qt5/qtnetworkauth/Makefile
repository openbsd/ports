# $OpenBSD: Makefile,v 1.4 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtNetworKAuth
REVISION =		0
COMMENT-main =		Qt5 network authorization components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5NetworkAuth		0.0

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network m pthread

FLAVORS =		debug

.include <bsd.port.mk>
