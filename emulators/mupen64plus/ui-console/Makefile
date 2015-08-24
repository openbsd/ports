# $OpenBSD: Makefile,v 1.10 2015/08/24 04:10:56 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin
REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		SDL c pthread
LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

.include <bsd.port.mk>
