# $OpenBSD: Makefile,v 1.6 2013/03/11 11:06:04 espie Exp $

COMMENT =		n64 emulator command-line ui plugin

REVISION =		1

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		c pthread

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

post-install:
	gunzip ${PREFIX}/man/man6/mupen64plus.6.gz

.include <bsd.port.mk>
