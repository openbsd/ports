# $OpenBSD: Makefile,v 1.15 2018/11/26 18:57:28 naddy Exp $

COMMENT =		n64 emulator video plugin
REVISION =		8

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL GLEW GLU SDL c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/glew>=1.12.0 \
			devel/sdl

MUPEN64PLUS_MOD = 	video-z64

.include <bsd.port.mk>
