# $OpenBSD: Makefile,v 1.13 2016/08/11 07:43:20 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL2 c pthread
LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

.include <bsd.port.mk>
