QT5NAME =		QtWebView
COMMENT-main =		simple web viewing component for Qt5

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5WebView                    0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel Qt5WebEngine
WANTLIB += Qt5WebEngineCore m

LIB_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtwebengine

FLAVORS =		debug

.include <bsd.port.mk>
