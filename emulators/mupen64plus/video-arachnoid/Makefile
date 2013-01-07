# $OpenBSD: Makefile,v 1.1.1.1 2013/01/07 16:59:51 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL c m pthread stdc++

MUPEN64PLUS_MOD = 	video-arachnoid

MASTER_SITES =		https://bitbucket.org/wahrhaft/mupen64plus-${MUPEN64PLUS_MOD}/downloads/

.include <bsd.port.mk>
