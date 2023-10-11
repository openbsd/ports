QT6NAME =	QtWebView
COMMENT =	simple web viewing component for Qt6
PKGSPEC =	qt6-qtwebview-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6WebView                0.0 # 0.0
SHARED_LIBS +=  Qt6WebViewQuick           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineQuick c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/qt6/qtwebengine

.include <bsd.port.mk>
