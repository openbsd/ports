# $OpenBSD: Makefile,v 1.14 2017/07/26 22:45:19 sthen Exp $

COMMENT =		n64 emulator video plugin
REVISION =		6

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
