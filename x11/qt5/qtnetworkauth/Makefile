# $OpenBSD: Makefile,v 1.2 2017/07/16 19:19:05 espie Exp $

QT5NAME =		QtNetworKAuth
COMMENT-main =		Qt5 network authorization components

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS +=  Qt5NetworkAuth		0.0

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
