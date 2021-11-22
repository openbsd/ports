# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:43 rsadowski Exp $

COMMENT =	pulseaudio mixer in qt

NAME =		pavucontrol-qt

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c glib-2.0 intl m pulse pulse-mainloop-glib

LIB_DEPENDS +=		audio/pulseaudio

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils

.include <bsd.port.mk>
