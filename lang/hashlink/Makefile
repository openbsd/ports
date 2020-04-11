# $OpenBSD: Makefile,v 1.3 2020/04/11 09:59:20 thfr Exp $

# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

COMMENT =	virtual machine for Haxe

V =		1.10
GH_ACCOUNT =	HaxeFoundation
GH_PROJECT =	hashlink
GH_TAGNAME =	${V}
REVISION =	1

SHARED_LIBS =	hl	0.0	# 1.10

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

LIB_DEPENDS =	audio/openal \
		devel/libuv \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png \
		security/polarssl

USE_GMAKE =	Yes
SUBST_VARS +=	CFLAGS

post-extract:
	rm -rf ${WRKSRC}/include/{fmt,turbojpeg}
	# remove dos line endings
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' \
		libs/uv/uv.c \
		src/hl.h \
		src/std/socket.c \
		src/std/thread.c

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
