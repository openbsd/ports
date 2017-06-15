# $OpenBSD: Makefile,v 1.1.1.1 2017/06/15 08:37:08 zhuk Exp $

QT5NAME =		QtVirtualKeyboard
COMMENT-main =		Qt5 virtual keyboard plugin

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =  ${LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Svg
WANTLIB += Qt5Widgets hunspell-1.6 m pthread xcb xcb-xfixes

LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsvg>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
