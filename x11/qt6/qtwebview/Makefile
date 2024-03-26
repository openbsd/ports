QT6NAME =	QtWebView
COMMENT =	simple web viewing component for Qt6
PKGSPEC =	qt6-qtwebview-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6WebView                0.0 # 0.0
SHARED_LIBS +=  Qt6WebViewQuick           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel
WANTLIB += Qt6WebChannelQuick Qt6WebEngineCore Qt6WebEngineQuick
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine \
		x11/xkbcommon

.include <bsd.port.mk>
