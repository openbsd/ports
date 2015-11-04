# $OpenBSD: Makefile,v 1.11 2015/11/04 16:41:46 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin
REVISION =		1

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL2 c pthread
LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

.include <bsd.port.mk>
