# $OpenBSD: Makefile,v 1.2 2017/07/16 19:19:05 espie Exp $

QT5NAME =		QtSpeech
COMMENT-main =		Qt5 text-to-speech components

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS +=  Qt5TextToSpeech		0.0

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core m pthread

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
