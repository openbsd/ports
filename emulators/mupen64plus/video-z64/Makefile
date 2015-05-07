# $OpenBSD: Makefile,v 1.6 2015/05/07 22:35:05 ajacoutot Exp $

COMMENT =		n64 emulator video plugin

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL GLEW GLU SDL c m pthread stdc++
LIB_DEPENDS =		graphics/glew \
			devel/sdl

MUPEN64PLUS_MOD = 	video-z64

CFLAGS +=		-I${LOCALBASE}/include/GL

.include <bsd.port.mk>
