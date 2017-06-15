# $OpenBSD: Makefile,v 1.1.1.1 2017/06/15 08:31:04 zhuk Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS +=  Qt5NetworkAuth		0.0

WANTLIB =  ${LIBCXX} GL Qt5Core Qt5Gui Qt5Network m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
