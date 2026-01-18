# JIT segfaults without USE_WXNEEDED
USE_WXNEEDED =	Yes

USE_NOBTCFI =	Yes

COMMENT =	virtual machine for Haxe

V =		1.15pl0
COMMIT =	109f831769ab26a6fa0cf08ef1b926776a77c372
PKGNAME =	hashlink-${V}
REVISION =	0

# commit from 2026-01-05; tagged as 'latest'
DIST_TUPLE +=	github HaxeFoundation hashlink ${COMMIT} .

SHARED_LIBS +=	hl		2.2	# 1.14
SHARED_LIBS +=	hl_module	0.0	# 1.13

CATEGORIES =	lang
HOMEPAGE =	https://hashlink.haxe.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 c m mbedcrypto mbedtls mbedx509
WANTLIB += openal png pthread sqlite3 turbojpeg uv vorbisfile z

# C++, C11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =	audio/libvorbis \
		audio/openal \
		databases/sqlite3 \
		devel/libuv \
		devel/sdl2 \
		graphics/jpeg \
		graphics/png \
		security/polarssl

USE_GMAKE =	Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

SUBST_VARS +=	CFLAGS LDFLAGS

FIX_CRLF_FILES = libs/uv/uv.c \
		src/hl.h \
		src/jit.c \
		src/std/socket.c \
		src/std/thread.c

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/hashlink-${COMMIT}

CFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib -L${X11BASE}/lib

post-extract:
	rm -rf ${WRKSRC}/include/{fmt,turbojpeg}

do-gen:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
