# $OpenBSD: Makefile,v 1.3 2013/09/05 03:26:30 bentley Exp $

COMMENT =		n64 emulator signal co-processor plugin

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		c m stdc++

MUPEN64PLUS_MOD = 	rsp-z64

MASTER_SITES =		https://bitbucket.org/wahrhaft/mupen64plus-${MUPEN64PLUS_MOD}/downloads/

.include <bsd.port.mk>
