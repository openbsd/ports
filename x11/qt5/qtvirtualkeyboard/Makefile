# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:08 zhuk Exp $

QT5NAME =		QtVirtualKeyboard
COMMENT-main =		Qt5 virtual keyboard plugin
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Svg Qt5Widgets hunspell-1.6 m xcb xcb-xfixes

LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsvg>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
