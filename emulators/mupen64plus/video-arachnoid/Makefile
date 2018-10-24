# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:02 sthen Exp $

COMMENT =		n64 emulator video plugin
REVISION =		5

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MUPEN64PLUS_MOD = 	video-arachnoid

.include <bsd.port.mk>
