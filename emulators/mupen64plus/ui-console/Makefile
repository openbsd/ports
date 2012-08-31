# $OpenBSD: Makefile,v 1.4 2012/08/31 18:25:16 pascal Exp $

COMMENT =		n64 emulator command-line ui plugin

REVISION =		0

#
# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c pthread

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS =		MANDIR=${PREFIX}/man PIE=1

post-install:
	gunzip ${PREFIX}/man/man6/mupen64plus.6.gz

.include <bsd.port.mk>
