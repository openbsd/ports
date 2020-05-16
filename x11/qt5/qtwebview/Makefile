# $OpenBSD: Makefile,v 1.5 2020/05/16 07:53:22 rsadowski Exp $

QT5NAME =		QtWebView
COMMENT-main =		simple web viewing component for Qt5

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5WebView                    0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5Qml Qt5Quick Qt5WebChannel Qt5WebEngine Qt5WebEngineCore
WANTLIB += m

LIB_DEPENDS =		x11/qt5/qtdeclarative \
			x11/qt5/qtwebengine

FLAVORS =		debug

.include <bsd.port.mk>
