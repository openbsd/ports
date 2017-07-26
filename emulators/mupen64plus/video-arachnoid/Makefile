# $OpenBSD: Makefile,v 1.11 2017/07/26 22:45:19 sthen Exp $

COMMENT =		n64 emulator video plugin
REVISION =		4

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL c m pthread ${COMPILER_LIBCXX}

MUPEN64PLUS_MOD = 	video-arachnoid

.include <bsd.port.mk>
