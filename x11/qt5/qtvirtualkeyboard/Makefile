# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:53 rsadowski Exp $

QT5NAME =		QtVirtualKeyboard
COMMENT-main =		Qt5 virtual keyboard plugin

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5HunspellInputMethod    0.0 # 5.13
SHARED_LIBS +=  Qt5VirtualKeyboard        0.0 # 5.13

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Svg Qt5Widgets hunspell-1.6 m xcb xcb-xfixes

LIB_DEPENDS =		textproc/hunspell \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsvg>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_ARGS +=	CONFIG+=disable-layouts

.include <bsd.port.mk>
