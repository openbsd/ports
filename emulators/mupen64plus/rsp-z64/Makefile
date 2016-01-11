# $OpenBSD: Makefile,v 1.8 2016/01/11 09:35:45 ajacoutot Exp $

COMMENT =		n64 emulator signal co-processor plugin
REVISION =		3

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		c m stdc++

MUPEN64PLUS_MOD = 	rsp-z64

.include <bsd.port.mk>
