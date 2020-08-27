# $OpenBSD: Makefile,v 1.5 2020/08/27 01:00:45 kevlo Exp $

COMMENT =	fcitx plugin for Qt5

SHARED_LIBS +=	FcitxQt5DBusAddons	0.0 # 1.0
SHARED_LIBS +=	FcitxQt5WidgetsAddons	0.0 # 1.0

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-qt5
GH_TAGNAME =	1.2.5

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
