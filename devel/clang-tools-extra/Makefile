# XXX
# This port is more or less a copy from devel/llvm and it tries to
# package the clang extra tools without increasing the complexity of
# devel/llvm.
#
# Please keep patches in sync with devel/llvm and just remove the lld and lldb
# patches: rm patches/patch-*lld*

ONLY_FOR_ARCHS =	${LLVM_ARCHS}

DPB_PROPERTIES =	parallel

COMMENT=	Clang extra tools

LLVM_V =	16.0.6
LLVM_BASE =	llvm16
DISTNAME =	llvm-project-${LLVM_V}.src
PKGNAME=	clang-tools-extra-${LLVM_V}

CATEGORIES =	devel

HOMEPAGE =	https://clang.llvm.org/extra/index.html

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# In transition from BSD-ish to Apache 2 + LLVM exceptions
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang-cpp

SITES =		https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/clang \
			lang/python

MODCLANG_COMPILER_LINKS =	No
MODCLANG_BUILDDEP =		No
MODCLANG_RUNDEP =		No

CONFIGURE_STYLE =	cmake

WRKDIST =	${WRKDIR}/llvm-project-${LLVM_V}.src
WRKSRC =	${WRKDIR}/llvm-project-${LLVM_V}.src/llvm

LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS}

BUILD_DEPENDS +=	devel/swig \
			textproc/py-sphinx${MODPY_FLAVOR} \
			textproc/py-recommonmark${MODPY_FLAVOR}

CLANG_INCLUDE_PATH =	${LLVM_BASE}/lib/clang/16/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V

CONFIGURE_ARGS +=	-DLLVM_ENABLE_BACKTRACES=OFF \
			-DLLVM_ENABLE_FFI=OFF \
			-DLLVM_ENABLE_LIBXML2=OFF \
			-DLLVM_ENABLE_OCAMLDOC=OFF \
			-DLLVM_ENABLE_PLUGINS=OFF \
			-DLLVM_ENABLE_TERMINFO=OFF \
			-DLLVM_ENABLE_RTTI=ON \
			-DLLVM_ENABLE_Z3_SOLVER=OFF \
			-DLLVM_ENABLE_ZSTD=OFF \
			-DLLVM_INCLUDE_TESTS=OFF \
			-DLLVM_INCLUDE_EXAMPLES=OFF \
			-DLLVM_INCLUDE_BENCHMARKS=OFF \
			-DLLVM_BUILD_LLVM_DYLIB=ON \
			-DLLVM_LINK_LLVM_DYLIB=ON \

# Generate documentation in man(1) format
CONFIGURE_ARGS +=	-DLLVM_ENABLE_SPHINX=ON \
			-DSPHINX_WARNINGS_AS_ERRORS=OFF \
			-DSPHINX_OUTPUT_MAN=ON

# OpenBSD specific options
CONFIGURE_ARGS +=	-DLLD_ENABLE_MACHO=OFF \
			-DLLD_ENABLE_WASM=ON \
			-DLLD_ENABLE_COFF=ON \
			-DLLD_ENABLE_MINGW=ON

CONFIGURE_ARGS +=	-DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra"

# Disable some protections in the compiler to regain performance.
CXXFLAGS-aarch64 =	-fno-ret-protector
CXXFLAGS-amd64 =	-fno-ret-protector -mno-retpoline
CXXFLAGS-i386 =		-fno-ret-protector -mno-retpoline
CXXFLAGS-mips64 =	-fno-ret-protector -fomit-frame-pointer
CXXFLAGS-mips64el =	-fno-ret-protector -fomit-frame-pointer
CXXFLAGS-powerpc =	-fno-ret-protector
CXXFLAGS +=		${CXXFLAGS-${MACHINE_ARCH}}

# hack to disable the use of -Bsymbolic-functions
OPENBSD_LD_IS_LLD =	FALSE
SUBST_VARS +=		OPENBSD_LD_IS_LLD

ALL_TARGET =	clang-change-namespace clang-apply-replacements
ALL_TARGET +=	clang-doc clang-format clang-include-fixer clang-move
ALL_TARGET +=	clang-query clang-reorder-fields clang-tidy clangd
ALL_TARGET +=	modularize pp-trace tool-template find-all-symbols

MODCMAKE_LDFLAGS = -L${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MODCMAKE_LDFLAGS += -Wl,-rpath=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

pre-configure:
	${SUBST_CMD} ${WRKDIST}/clang/lib/Driver/ToolChains/OpenBSD.cpp \
		${WRKDIST}/clang/tools/clang-shlib/CMakeLists.txt \
		${WRKDIST}/clang/tools/clang-format/clang-format-sublime.py \
		${WRKDIST}/clang/tools/clang-format/clang-format.py \
		${WRKDIST}/clang/tools/clang-format/git-clang-format \
		${WRKSRC}/tools/llvm-shlib/CMakeLists.txt

do-install:
	cd ${WRKBUILD}
.for _t in ${ALL_TARGET}
	exec ${SETENV} ${MAKE_ENV} ${FAKE_SETUP} cmake --install ${WRKBUILD} \
		--component "${_t}"
.endfor

.include <bsd.port.mk>
