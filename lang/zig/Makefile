# should be fine for ${LLVM_ARCHS}, but it needs insane amount of datasize
ONLY_FOR_ARCHS =	amd64 arm64 powerpc64

BROKEN-powerpc64 =	ld: error: undefined symbol: __subkf3 (and others)

COMMENT =	zig compiler and toolchain

DISTNAME =	zig-0.15.2

GH_ACCOUNT =	ziglang
GH_PROJECT =	zig
GH_COMMIT =	${ZIG_COMMIT}

# see https://github.com/ziglang/zig/tree/0.15.x
ZIG_VERSION =	0.15.2
ZIG_COMMIT =	e4cbd752c8c05f131051f8c873cff7823177d7d3

CATEGORIES =	lang

HOMEPAGE =	https://ziglang.org/

MAINTAINER =	Brandon Mercer <bmercer@eutonian.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c

# C++17
COMPILER =	ports-clang

MODULES +=		devel/cmake

MODULES +=		lang/clang
MODCLANG_LANGS =	c c++
MODCLANG_VERSION =	20

SEPARATE_BUILD =	Yes

CONFIGURE_ARGS +=	\
	-DZIG_VERSION="${ZIG_VERSION}+${ZIG_COMMIT:C/(.........).*/\1/}" \
	-DZIG_STATIC_LLVM=ON \
	-DZIG_TARGET_TRIPLE=native \
	-DZIG_TARGET_MCPU=baseline \
	-DLLVM_CONFIG_EXE="${LOCALBASE}/bin/llvm-config-${MODCLANG_VERSION}"

# disable some llvm protections in the compiler to regain performance
XFLAGS-aarch64 =	-fno-ret-protector
XFLAGS-amd64 =		-fno-ret-protector -mno-retpoline
XFLAGS-i386 =		-fno-ret-protector -mno-retpoline
XFLAGS-mips64 =		-fno-ret-protector -fomit-frame-pointer
XFLAGS-mips64el =	-fno-ret-protector -fomit-frame-pointer
XFLAGS-powerpc =	-fno-ret-protector

CFLAGS +=		${XFLAGS-${MACHINE_ARCH}}
CXXFLAGS +=		${XFLAGS-${MACHINE_ARCH}}

MAKE_ENV +=	ZIG_GLOBAL_CACHE_DIR=${WRKBUILD}/zig-global-cache \
		ZIG_LOCAL_CACHE_DIR=${WRKBUILD}/zig-local-cache

# set stacksize limit to 10M during the build
do-build:
	@ulimit -s 10240 && ${MODCMAKE_BUILD_TARGET}

do-install:
	cp -R ${WRKBUILD}/stage3/* ${PREFIX}
	find ${PREFIX}/lib/zig -name '*${PATCHORIG}' -delete

do-test:
	cd ${WRKSRC} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		${WRKBUILD}/stage3/bin/zig build test \
			-j${MAKE_JOBS} \
			--verbose \
			--verbose-link

.include <bsd.port.mk>
