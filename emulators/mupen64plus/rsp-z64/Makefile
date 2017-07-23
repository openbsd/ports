# $OpenBSD: Makefile,v 1.11 2017/07/23 09:26:27 espie Exp $

COMMENT =		n64 emulator signal co-processor plugin
REVISION =		4

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		c m ${COMPILER_LIBCXX}

MUPEN64PLUS_MOD = 	rsp-z64

.include <bsd.port.mk>
