# $OpenBSD: Makefile,v 1.3 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtSpeech
REVISION =		0
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
