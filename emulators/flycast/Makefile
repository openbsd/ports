# i386 uses fastcall, which currently does not compile with luabridge.
# if fastcall is patched out, i386 interpreter works (slow) but dynarec crashes.
# see: https://github.com/vinniefalco/LuaBridge/issues/302
ONLY_FOR_ARCHS =	amd64

COMMENT =	emulator for Sega Dreamcast and Sega Naomi based on reicast

V =		2.1pl20230303
DISTNAME =	flycast-${V}
COMMIT =	27b6bafd0f003c8f8bcd1fb3bfd48a3523b298f5
REVISION =	3

CATEGORIES =	emulators games

HOMEPAGE =	https://github.com/flyinghead/flycast

MAINTAINER =	Nam Nguyen <namn@openbsd.org>

# GPLv2 (flycast, picoTCP), GPLv3 (glslang, picoTCP, xbrz),
# Apache 2.0 (Vulkan-Headers, glslang),
# BSD-3-Clause (glslang, gtest, vixl, xbyak, exec_elf.h),
# BSD-2-Clause (libelf, glslang), LGPL (lzma), Boost (nowide),
# MIT (VulkanMemoryAllocator, ggpo, GLM, glslang, imgui, json, md5, stb),
# Custom NVIDIA and Khronos Group (glslang preprocessor)
PERMIT_PACKAGE =	Yes

# if running with vulkan backend, dlopen's vulkan in vulkan.hpp
WANTLIB += ${COMPILER_LIBCXX} GL SDL2 ao c curl chdr
WANTLIB += lua${MODLUA_VERSION} m miniupnpc pulse xxhash z zip

SITES =		https://messagemode2.com/source/

NO_TEST =	Yes

FIX_CRLF_FILES =	core/deps/VulkanMemoryAllocator/include/vk_mem_alloc.h

# C++
COMPILER =	base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/lua

MODLUA_VERSION =	5.3

WRKDIST =	${WRKDIR}/flycast
WRKSRC =	${WRKDIST}

USE_WXNEEDED =	Yes

BUILD_DEPENDS =	lang/luabridge
LIB_DEPENDS =	archivers/libzip \
		audio/libao \
		audio/pulseaudio \
		devel/sdl2 \
		emulators/libchdr \
		net/curl \
		net/miniupnp/miniupnpc \
		sysutils/xxhash

CONFIGURE_ARGS +=	-DUSE_VULKAN=OFF
do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

# needs: devel/git and archivers/gtar
D =	/tmp/flycast
dist:
	cd /tmp && git clone https://github.com/flyinghead/flycast.git; \
	cd ${D} && git checkout ${COMMIT}; \
	git rm -r --cached core/deps/{SDL,breakpad,glslang,libchdr,luabridge}; \
	git submodule init; \
	git submodule update; \
	rm -rfv core/deps/{dirent,libretro-common,libzip,miniupnpc,oboe,xxHash}; \
	cd /tmp && gtar czvf flycast-${V}.tar.gz --exclude-vcs flycast; \
	scp flycast-${V}.tar.gz train:source/; \
	rm /tmp/flycast-${V}.tar.gz; \
	rm -rfv ${D};

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/flycast \
		${PREFIX}/bin/

.include <bsd.port.mk>
