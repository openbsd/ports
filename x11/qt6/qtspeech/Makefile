QT6NAME =	QtSpeech
COMMENT =	Qt text-to-speech components
PKGSPEC =	qt6-qtspeech-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6TextToSpeech           0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6Qml c glib-2.0 intl m speechd

LIB_DEPENDS =	audio/speech-dispatcher \
		devel/gettext \
		devel/glib2 \
		x11/qt6/qtmultimedia \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
