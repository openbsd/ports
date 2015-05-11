# $OpenBSD: Makefile,v 1.9 2015/05/11 09:40:40 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL c pthread
LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

.include <bsd.port.mk>
