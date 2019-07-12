# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:13 sthen Exp $

COMMENT =	fcitx plugin for Qt5

SHARED_LIBS +=	FcitxQt5DBusAddons	0.0 # 1.0
SHARED_LIBS +=	FcitxQt5WidgetsAddons	0.0 # 1.0

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-qt5
GH_TAGNAME =	1.2.3
REVISION =	0

CATEGORIES =	inputmethods

HOMEPAGE =	https://fcitx-im.org/
MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB +=	Qt5Widgets c fcitx-config fcitx-utils intl m xkbcommon

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/extra-cmake-modules

LIB_DEPENDS =	inputmethods/fcitx,-main

NO_TEST =	Yes

.include <bsd.port.mk>
