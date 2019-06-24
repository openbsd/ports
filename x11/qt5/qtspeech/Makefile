# $OpenBSD: Makefile,v 1.7 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtSpeech
COMMENT-main =		Qt5 text-to-speech components
REVISION-main =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5TextToSpeech		0.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
