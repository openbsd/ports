# XXX If broken on an architecture, remove the arch from LLVM_ARCHS.
ONLY_FOR_ARCHS =	${LLVM_ARCHS}

DPB_PROPERTIES =	parallel

COMMENT-main =		modular, fast C/C++/ObjC compiler, static analyzer and tools
COMMENT-lldb =		LLDB debugger
COMMENT-python =	Python bindings for Clang

DISTNAME =		llvm-project-${LLVM_VERSION}.src

PKGSTEM =		llvm-${LLVM_MAJOR}
PKGSTEM-main =		llvm-${LLVM_MAJOR}

PKGNAME =		llvm-${LLVM_VERSION}
PKGNAME-lldb =		lldb-${LLVM_VERSION}
PKGNAME-python =	${MODPY_PY_PREFIX}llvm-${LLVM_VERSION}

PKGSPEC-main =		llvm-${LLVM_PKGSPEC}
PKGSPEC-lldb =		lldb-${LLVM_PKGSPEC}
PKGSPEC-python =	${MODPY_PY_PREFIX}llvm-${LLVM_PKGSPEC}

CATEGORIES =	devel

MAINTAINER =	Sebastien Marie <semarie@online.fr>, \
		Robert Nagy <robert@openbsd.org>

LLVM_BASE =	llvm${LLVM_MAJOR}
SUBST_VARS +=	LLVM_BASE LLVM_MAJOR LLVM_VERSION LLVM_PKGSPEC

HOMEPAGE =	https://www.llvm.org/

WANTLIB +=	${COMPILER_LIBCXX} c edit execinfo m z

SITES =		https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/
EXTRACT_SUFX =	.tar.xz

MULTI_PACKAGES =	-main -python -lldb

.for i in ${MULTI_PACKAGES:S/-//g}
DESCR-${i} =	${.CURDIR}/../files/DESCR-${i}
.endfor

WRKDIST =	${WRKDIR}/llvm-project-${LLVM_VERSION}.src
WRKSRC =	${WRKDIR}/llvm-project-${LLVM_VERSION}.src/llvm

# C++11
COMPILER =	base-clang ports-gcc

MODULES +=	devel/cmake \
		lang/python

BUILD_DEPENDS +=	devel/swig \
			textproc/py-sphinx${MODPY_FLAVOR} \
			textproc/py-recommonmark${MODPY_FLAVOR}

.if !${PROPERTIES:Mclang}
RUN_DEPENDS +=	lang/gcc/${MODGCC4_VERSION},-c++
.endif

CONFIGURE_STYLE +=	cmake
CONFIGURE_ARGS +=	\
	-DCMAKE_INSTALL_PREFIX="${LOCALBASE}/${LLVM_BASE}" \
	-DCMAKE_PREFIX_PATH="${LOCALBASE}/${LLVM_BASE}" \
	-DLLVM_ENABLE_PROJECTS="clang;lld;lldb" \
	-DLLVM_ENABLE_BACKTRACES=OFF \
	-DLLVM_ENABLE_FFI=OFF \
	-DLLVM_ENABLE_LIBXML2=OFF \
	-DLLVM_ENABLE_OCAMLDOC=OFF \
	-DLLVM_ENABLE_PLUGINS=OFF \
	-DLLVM_ENABLE_TERMINFO=OFF \
	-DLLVM_ENABLE_RTTI=ON \
	-DLLVM_ENABLE_Z3_SOLVER=OFF \
	-DLLVM_ENABLE_ZSTD=OFF \
	-DLLVM_INCLUDE_TESTS=ON \
	-DLLVM_INCLUDE_GO_TESTS=OFF \
	-DLLVM_INCLUDE_EXAMPLES=OFF \
	-DLLVM_INCLUDE_BENCHMARKS=OFF \
	-DLLVM_BUILD_LLVM_DYLIB=ON \
	-DLLVM_LINK_LLVM_DYLIB=ON \
	-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND \
	-DLLDB_USE_SYSTEM_SIX=ON \
	-DLLDB_ENABLE_LZMA=OFF \
	-DLLDB_ENABLE_LUA=OFF \
	-DLLDB_ENABLE_LIBXML2=OFF

# Generate documentation in man(1) format
CONFIGURE_ARGS +=	\
	-DLLVM_ENABLE_SPHINX=ON \
	-DSPHINX_WARNINGS_AS_ERRORS=OFF \
	-DSPHINX_OUTPUT_MAN=ON

# OpenBSD specific options
CONFIGURE_ARGS +=	\
	-DLLD_ENABLE_MACHO=OFF \
	-DLLD_ENABLE_WASM=ON \
	-DLLD_ENABLE_COFF=ON \
	-DLLD_ENABLE_MINGW=ON

# Disable some protections in the compiler to regain performance.
CXXFLAGS-aarch64 =	-fno-ret-protector
CXXFLAGS-amd64 =	-fno-ret-protector -mno-retpoline
CXXFLAGS-i386 =		-fno-ret-protector -mno-retpoline
CXXFLAGS-mips64 =	-fno-ret-protector -fomit-frame-pointer
CXXFLAGS-mips64el =	-fno-ret-protector -fomit-frame-pointer
CXXFLAGS-powerpc =	-fno-ret-protector
CXXFLAGS +=		${CXXFLAGS-${MACHINE_ARCH}}

ALL_TARGET =		all docs-llvm-man docs-clang-man

MODPY_ADJ_FILES +=	\
	../clang/tools/clang-format/git-clang-format \
	../clang/tools/scan-build-py/bin/analyze-build \
	../clang/tools/scan-build-py/bin/intercept-build \
	../clang/tools/scan-build-py/bin/scan-build \
	../clang/tools/scan-build-py/libexec/analyze-c++ \
	../clang/tools/scan-build-py/libexec/analyze-cc \
	../clang/tools/scan-build-py/libexec/intercept-cc \
	../clang/tools/scan-build-py/libexec/intercept-c++ \
	../clang/tools/scan-view/bin/scan-view \
	../clang/utils/hmaptool/hmaptool

# XXX sync
GCC_VER =		8.4.0
.if ${MACHINE_ARCH} == "amd64"
GCC_CONFIG =		x86_64-unknown-openbsd${OSREV}
.else
GCC_CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
.endif

.if ${LLVM_MAJOR} > 13
CLANG_INCLUDE_PATH =	${LLVM_BASE}/lib/clang/${LLVM_MAJOR}/include
.else
CLANG_INCLUDE_PATH =	${LLVM_BASE}/lib/clang/${LLVM_VERSION}/include
.endif
SUBST_VARS +=		CLANG_INCLUDE_PATH GCC_VER GCC_CONFIG

# hack to disable the use of -Bsymbolic-functions
.if ${PROPERTIES:Mlld}
OPENBSD_LD_IS_LLD =	TRUE
.else
OPENBSD_LD_IS_LLD =	FALSE
.endif
SUBST_VARS +=		OPENBSD_LD_IS_LLD

pre-configure:
	${SUBST_CMD} ${WRKDIST}/clang/lib/Driver/ToolChains/OpenBSD.cpp \
		${WRKDIST}/clang/tools/clang-shlib/CMakeLists.txt \
		${WRKDIST}/clang/tools/clang-format/clang-format-sublime.py \
		${WRKDIST}/clang/tools/clang-format/clang-format.py \
		${WRKDIST}/clang/tools/clang-format/git-clang-format \
		${WRKSRC}/tools/llvm-shlib/CMakeLists.txt

post-install:
	${SUBST_DATA} ${.CURDIR}/../files/README-main \
		${PREFIX}/share/doc/pkg-readmes/${PKGSTEM-main}
	${SUBST_PROGRAM} ${.CURDIR}/../files/llvm-wrapper.sh.in \
		${PREFIX}/bin/clang-${LLVM_MAJOR}
	for _f in `cd ${PREFIX}/${LLVM_BASE}/bin && ls -1`; do ln -f ${PREFIX}/bin/clang-${LLVM_MAJOR} ${PREFIX}/bin/$${_f}-${LLVM_MAJOR}; done
	${INSTALL_DATA_DIR} \
		${PREFIX}/${LLVM_BASE}/lib/python${MODPY_VERSION}/site-packages/clang
	${INSTALL_DATA} ${WRKSRC}/../clang/bindings/python/clang/* \
		${PREFIX}/${LLVM_BASE}/lib/python${MODPY_VERSION}/site-packages/clang
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/${LLVM_BASE}/lib/python${MODPY_VERSION}/site-packages/clang \
		${PREFIX}/${LLVM_BASE}/lib/python${MODPY_VERSION}/site-packages/lldb \
		${PREFIX}/${LLVM_BASE}/lib/libear \
		${PREFIX}/${LLVM_BASE}/lib/libscanbuild \
		${PREFIX}/${LLVM_BASE}/share/clang \
		${PREFIX}/${LLVM_BASE}/share/opt-viewer \
		${PREFIX}/${LLVM_BASE}/share/scan-view
	${INSTALL_DATA} ${WRKBUILD}/docs/man/* \
		${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKBUILD}/man/man1/* \
		${PREFIX}/man/man1
	# clang 16 generates clang, clang++, clang-cpp.1 ...
	${INSTALL_DATA} ${WRKBUILD}/tools/clang/docs/man/clang*.1 \
		${PREFIX}/man/man1/clang.1
	${INSTALL_DATA} ${WRKBUILD}/tools/clang/docs/man/diagtool.1 \
		${PREFIX}/man/man1/
	cd ${PREFIX}/man/man1 && for _f in `echo *.1`; do mv $${_f} $${_f%%.1}-${LLVM_MAJOR}.1; done
	# lit and FileCheck are not installed
	rm ${PREFIX}/man/man1/lit-${LLVM_MAJOR}.1
	rm ${PREFIX}/man/man1/FileCheck-${LLVM_MAJOR}.1
	rm -rf ${PREFIX}/${LLVM_BASE}/man    

	# search and remove headers that might conflict with base
	# leave unwind.h in place for sparc64
	cd ${PREFIX}/${CLANG_INCLUDE_PATH} && \
		find . -name '*.h' | fgrep -v -e './unwind.h' -e './tgmath.h' | sed "s,./,,g" | while read h; \
		do \
			if test -e /usr/include/$${h}; then rm $${h}; fi; \
		done

do-test:
	cd ${WRKBUILD} && env -i ${MAKE_ENV} HOME=${WRKBUILD}/test LD_LIBRARY_PATH=${WRKBUILD}/lib \
		ninja -j ${MAKE_JOBS} check-llvm-unit
	exit 1

diff-to-base: ${_PATCH_COOKIE}
.for _subdir in clang lld lldb llvm
	@_d=/tmp/llvm${LLVM_MAJOR}_${_subdir}.diff && echo "Creating $${_d} ..." && \
		diff -ruN -x CVS -x test -x '*${PATCHORIG}' -x '*.beforesubst' \
		${BSDSRCDIR}/gnu/llvm/${_subdir} ${WRKDIST}/${_subdir} \
		> $${_d} || true
.endfor
