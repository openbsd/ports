# $OpenBSD: Makefile,v 1.8 2015/08/24 04:10:56 bentley Exp $

COMMENT =		n64 emulator video plugin
REVISION =		0

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0
REVISION =		2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/mupen64plus-${MUPEN64PLUS_MOD}

WANTLIB =		GL SDL c m pthread stdc++
LIB_DEPENDS =		devel/sdl

MUPEN64PLUS_MOD = 	video-glide64

# PIE doesn't leave sufficient registers
.if ${MACHINE_ARCH:Mi386}
CFLAGS += -fomit-frame-pointer
.endif

.include <bsd.port.mk>
