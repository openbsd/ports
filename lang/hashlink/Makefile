# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

USE_NOBTCFI =	Yes

COMMENT =	virtual machine for Haxe

V =		1.14pl2
COMMIT =	63763dc3d8fcbae5a02a731217a60ad93eb746a1
PKGNAME =	hashlink-${V}

# commit from 2024-05-10; tagged as 'latest'
DIST_TUPLE +=	github HaxeFoundation hashlink ${COMMIT} .

SHARED_LIBS +=	hl		2.2	# 1.14
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
		src/jit.c \
		src/std/socket.c \
		src/std/thread.c

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/hashlink-${COMMIT}

post-extract:
	rm -rf ${WRKSRC}/include/{fmt,turbojpeg}

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
