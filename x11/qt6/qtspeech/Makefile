QT6NAME =	QtSpeech
COMMENT =	Qt text-to-speech components
PKGSPEC =	qt6-qtspeech-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6TextToSpeech           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml c glib-2.0
WANTLIB += intl m speechd

LIB_DEPENDS =		audio/speech-dispatcher \
			x11/qt6/qtdeclarative

.include <bsd.port.mk>
