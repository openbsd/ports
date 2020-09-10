# $OpenBSD: Makefile,v 1.5 2020/09/10 13:32:37 mariani Exp $

COMMENT =	pulseaudio mixer in qt

VERSION =	0.15.0
REVISION =      0

NAME =		pavucontrol-qt
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c glib-2.0 intl m pulse pulse-mainloop-glib

LIB_DEPENDS +=		audio/pulseaudio

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils

.include <bsd.port.mk>
