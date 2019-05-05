# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:07 naddy Exp $

COMMENT =	pulseaudio mixer in qt

VERSION =	0.4.0

NAME =		pavucontrol-qt
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c glib-2.0 intl m pulse-mainloop-glib pulse

LIB_DEPENDS +=		audio/pulseaudio

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-pavucontrol-qt \
			devel/desktop-file-utils

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
