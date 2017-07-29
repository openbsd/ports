# $OpenBSD: Makefile,v 1.4 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtSpeech
REVISION =		0
COMMENT-main =		Qt5 text-to-speech components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5TextToSpeech		0.0

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core m pthread

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
