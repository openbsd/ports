# $OpenBSD: Makefile,v 1.17 2018/11/26 18:57:28 naddy Exp $

COMMENT =		n64 emulator video plugin
REVISION =		9

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL SDL c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	video-glide64

MAKE_FLAGS +=		NO_ASM=1

.include <bsd.port.mk>
