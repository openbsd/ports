# $OpenBSD: Makefile,v 1.15 2018/04/09 05:25:45 bentley Exp $

COMMENT =		n64 emulator video plugin
REVISION =		7

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL SDL c m pthread ${COMPILER_LIBCXX}
LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	video-glide64

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
