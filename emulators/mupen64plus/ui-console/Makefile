# $OpenBSD: Makefile,v 1.2 2011/12/26 22:58:48 bentley Exp $

COMMENT =		n64 emulator command-line ui plugin
#
# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c pthread

MUPEN64PLUS_MOD = 	ui-console

post-install:
	gunzip ${PREFIX}/man/man6/mupen64plus.6.gz

.include <bsd.port.mk>
