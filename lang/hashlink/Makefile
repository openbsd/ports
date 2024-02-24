# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

USE_NOBTCFI =	Yes

COMMENT =	virtual machine for Haxe

V =		1.14pl0
PKGNAME =	hashlink-${V}

# commit from 2024-02-13; tagged as 'latest'
DIST_TUPLE +=	github HaxeFoundation hashlink \
		20df6529c932f7e9ab4e1c528a0321723f2d09ae .

SHARED_LIBS +=	hl		2.0	# 1.14
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
