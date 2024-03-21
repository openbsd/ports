# Requires OpenGL>=3.3, only usable on archs that support
# modern video cards
ONLY_FOR_ARCHS =	amd64 aarch64 i386
BROKEN-i386 =		always_inline function '_mm_set_epi32' requires target feature 'sse2', but would be inlined into function 'glm_mat4_inv_sse2' that is compiled without support for 'sse2'

# the koishi coroutine library needs boost 1.81.0+ for BTI
# https://github.com/taisei-project/koishi/issues/6
USE_NOBTCFI =		Yes

COMMENT =		clone of the touhou games

VERSION =		1.4.1
DISTNAME =		taisei-${VERSION}

CATEGORIES =		games

HOMEPAGE =		https://taisei-project.org/

MAINTAINER =		Omar Polo <op@openbsd.org>

# MIT
# Soundtrack: CC-BY 4.0 / Photos: PD and CC-0
PERMIT_PACKAGE =	Yes

# Somehow, even if it links with c++, c++abi and pthread don't end up
# here.  Maybe the -Wl,--as-needed.
WANTLIB += ${COMPILER_LIBCXX} SDL2 c crypto freetype m opusfile png
WANTLIB += shaderc_shared spirv-cross-c-shared webpdecoder z zstd

SITES =	https://github.com/taisei-project/taisei/releases/download/v${VERSION}/

EXTRACT_SUFX=		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson \
			lang/python

MODPY_RUNDEP =		No

BUILD_DEPENDS =		math/cglm

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/opusfile \
			devel/sdl2>=2.0.5 \
			graphics/libwebp>=0.5 \
			graphics/png>=1.5.0 \
			graphics/shaderc \
			graphics/spirv-cross

CONFIGURE_ARGS +=	-Ddefault_library=shared \
			-Ddocs=disabled \
			-Dgamemode=disabled \
			-Dinstall_macos_bundle=disabled \
			-Dinstall_relocatable=disabled \
			-Dpackage_data=disabled \
			-Dvfs_zip=disabled

# LTO causes a crash during the bossfight on the third stage, see:
# https://github.com/taisei-project/taisei/issues/378
CONFIGURE_ARGS +=	-Db_lto=false

# don't statically link to these
.for lib in freetype glslang libpng libwebp libzip libzstd ogg opus opusfile \
	sdl2 shaderc SPIRV-Cross vorbis zlib
CONFIGURE_ARGS +=	-D${lib}:default_library=shared
.endfor

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
