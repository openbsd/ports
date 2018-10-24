# $OpenBSD: Makefile,v 1.13 2018/10/24 14:28:02 sthen Exp $

COMMENT =		n64 emulator signal co-processor plugin
REVISION =		6

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MUPEN64PLUS_MOD = 	rsp-z64

.include <bsd.port.mk>
