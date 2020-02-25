# $OpenBSD: Makefile,v 1.1.1.1 2020/02/25 02:36:47 thfr Exp $

# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

COMMENT =	virtual machine for Haxe

V =		1.10
GH_ACCOUNT =	HaxeFoundation
GH_PROJECT =	hashlink
GH_TAGNAME =	${V}

SHARED_LIBS =	hl	0.0	# 1.10

CATEGORIES =	lang
HOMEPAGE =	https://hashlink.haxe.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 c m mbedcrypto mbedtls mbedx509 openal png pthread
WANTLIB += turbojpeg uv vorbisfile z

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

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
