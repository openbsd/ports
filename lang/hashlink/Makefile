# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

USE_NOBTCFI =	Yes

COMMENT =	virtual machine for Haxe

V =		1.13
DISTNAME =	hashlink-${V}
GH_ACCOUNT =	HaxeFoundation
GH_PROJECT =	hashlink
GH_TAGNAME =	${V}
REVISION =	2

SHARED_LIBS +=	hl		1.0	# 1.12
SHARED_LIBS +=	hl_module	0.0	# 1.13

CATEGORIES =	lang
HOMEPAGE =	https://hashlink.haxe.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += GL SDL2 c m mbedcrypto mbedtls mbedx509 openal png pthread
WANTLIB += sqlite3 turbojpeg uv vorbisfile z

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		databases/sqlite3 \
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

NO_TEST =	Yes

post-extract:
	rm -rf ${WRKSRC}/include/{fmt,turbojpeg}

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
