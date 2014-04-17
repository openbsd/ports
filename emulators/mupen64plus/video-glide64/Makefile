# $OpenBSD: Makefile,v 1.6 2014/04/17 07:03:59 bentley Exp $

COMMENT =		n64 emulator video plugin

# XXX upstream was inconsistent with numbering this release (2.0 vs 2.0.0)
VERSION =		2.0.0
REVISION =		1

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
