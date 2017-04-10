# $OpenBSD: Makefile,v 1.9 2017/04/10 11:45:28 sthen Exp $

COMMENT =		n64 emulator signal co-processor plugin
REVISION =		3

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		c m ${LIBCXX}

MUPEN64PLUS_MOD = 	rsp-z64

.include <bsd.port.mk>
