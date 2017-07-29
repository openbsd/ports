# $OpenBSD: Makefile,v 1.4 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtWebView
COMMENT-main =		simple web viewing component for Qt5

SHARED_LIBS =		Qt5WebView		0.0

MULTI_PACKAGES =	-main -examples

WANTLIB =		Qt5Core Qt5Quick Qt5WebKit

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebengine>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
