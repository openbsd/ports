# $OpenBSD: Makefile,v 1.14 2019/02/26 22:10:55 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MUPEN64PLUS_MOD = 	video-arachnoid

.include <bsd.port.mk>
