# $OpenBSD: Makefile,v 1.12 2016/01/11 09:35:45 ajacoutot Exp $

COMMENT =		n64 emulator command-line ui plugin
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL2 c pthread
LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

.include <bsd.port.mk>
