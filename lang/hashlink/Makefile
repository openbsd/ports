# $OpenBSD: Makefile,v 1.8 2021/10/23 19:32:50 sthen Exp $

# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

COMMENT =	virtual machine for Haxe

DISTNAME =	hashlink-1.11pl0
REVISION =	0
GH_ACCOUNT =	HaxeFoundation
GH_PROJECT =	hashlink
GH_COMMIT =	e31db78d8e0a07e2be6816fbd8f63ad28afc8ff1

SHARED_LIBS =	hl	0.1	# 1.11

CATEGORIES =	lang
HOMEPAGE =	https://hashlink.haxe.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 c m mbedcrypto mbedtls mbedx509 openal png pthread
WANTLIB += turbojpeg uv vorbisfile z

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		devel/libuv \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png \
		security/polarssl

USE_GMAKE =	Yes
SUBST_VARS +=	CFLAGS

FIX_CRLF_FILES = libs/uv/uv.c \
		src/hl.h \
		src/std/socket.c \
		src/std/thread.c

post-extract:
	rm -rf ${WRKSRC}/include/{fmt,turbojpeg}

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
