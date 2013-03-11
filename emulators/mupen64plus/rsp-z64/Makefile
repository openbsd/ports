# $OpenBSD: Makefile,v 1.2 2013/03/11 11:06:04 espie Exp $

COMMENT =		n64 emulator signal co-processor plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		c m stdc++

MUPEN64PLUS_MOD = 	rsp-z64

MASTER_SITES =		https://bitbucket.org/wahrhaft/mupen64plus-${MUPEN64PLUS_MOD}/downloads/

.include <bsd.port.mk>
