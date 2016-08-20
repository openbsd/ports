# $OpenBSD: Makefile,v 1.14 2016/08/20 00:14:01 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin
REVISION =		4

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL2 c pthread
LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

USE_WXNEEDED =		Yes

.include <bsd.port.mk>
