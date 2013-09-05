# $OpenBSD: Makefile,v 1.3 2013/09/05 03:26:31 bentley Exp $

COMMENT =		n64 emulator video plugin

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL SDL c m pthread stdc++
LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	video-glide64

MASTER_SITES =		https://bitbucket.org/wahrhaft/mupen64plus-${MUPEN64PLUS_MOD}/downloads/

.include <bsd.port.mk>
