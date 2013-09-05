# $OpenBSD: Makefile,v 1.7 2013/09/05 03:26:31 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL c pthread
LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

.include <bsd.port.mk>
