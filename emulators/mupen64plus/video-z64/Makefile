# $OpenBSD: Makefile,v 1.8 2015/08/24 04:10:57 bentley Exp $

COMMENT =		n64 emulator video plugin
REVISION =		0

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL GLEW GLU SDL c m pthread stdc++
LIB_DEPENDS =		graphics/glew>=1.12.0 \
			devel/sdl

MUPEN64PLUS_MOD = 	video-z64

.include <bsd.port.mk>
