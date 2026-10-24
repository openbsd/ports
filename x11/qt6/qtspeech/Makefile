QT6NAME =	QtSpeech
COMMENT =	Qt text-to-speech components
PKGSPEC =	qt6-qtspeech-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6TextToSpeech           1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Multimedia Qt6Network Qt6Qml flite glib-2.0 intl
WANTLIB += m speechd xkbcommon

LIB_DEPENDS =	audio/speech-dispatcher \
		audio/flite \
		devel/gettext \
		devel/glib2 \
		x11/qt6/qtmultimedia \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
