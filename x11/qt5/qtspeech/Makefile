QT5NAME =		QtSpeech
COMMENT-main =		Qt5 text-to-speech components

KDE_COMMIT =		9b3738febbc751820ede496e8d619c5be56548dc
KDE_VERSION =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5TextToSpeech         1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core glib-2.0 intl m speechd

BUILD_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION} \
			x11/qt5/qtxmlpatterns>=${QT5_VERSION:R},<${QT5_NEXT_VERSION} \
			x11/qt5/qtdeclarative>=${QT5_VERSION:R},<${QT5_NEXT_VERSION} \
			audio/flite

RUN_DEPENDS =		x11/qt5/qtmultimedia>=${QT5_VERSION:R},<${QT5_NEXT_VERSION}

LIB_DEPENDS =		audio/speech-dispatcher

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
