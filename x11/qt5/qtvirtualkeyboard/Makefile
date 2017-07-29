# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtVirtualKeyboard
REVISION =		0
COMMENT-main =		Qt5 virtual keyboard plugin

MULTI_PACKAGES =	-main -examples

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Svg
WANTLIB += Qt5Widgets hunspell-1.6 m pthread xcb xcb-xfixes

LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsvg>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
