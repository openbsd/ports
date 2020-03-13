# $OpenBSD: Makefile,v 1.9 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtSpeech
COMMENT-main =		Qt5 text-to-speech components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5TextToSpeech         1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}
RUN_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
