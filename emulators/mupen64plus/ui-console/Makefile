# $OpenBSD: Makefile,v 1.1.1.1 2011/12/26 13:38:27 stsp Exp $

COMMENT =		n64 emulator command-line ui plugin
#
# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		c pthread

MUPEN64PLUS_MOD = 	ui-console
MODULES = 		emulators/mupen64plus

post-install:
	gunzip ${PREFIX}/man/man6/mupen64plus.6.gz

.include <bsd.port.mk>
