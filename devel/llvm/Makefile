# $OpenBSD: Makefile,v 1.120 2016/09/24 12:35:38 ajacoutot Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

ONLY_FOR_ARCHS = ${LLVM_ARCHS}
DPB_PROPERTIES = parallel

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools

LLVM_V =	3.8.1
REVISION =	3
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME =	llvm-${LLVM_V}
CATEGORIES =	devel
DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cfe-${LLVM_V}.src${EXTRACT_SUFX}
MASTER_SITES =	http://www.llvm.org/releases/${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS =	clang		3.0 \
		LTO		0.0

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread z

MODULES =	devel/cmake \
		lang/python \
		gcc4

MODGCC4_LANGS = c c++
MODGCC4_ARCHS = *

TEST_DEPENDS =		devel/dejagnu \
			shells/bash \
			lang/gcc/${MODGCC4_VERSION},-c++
BUILD_DEPENDS +=	textproc/py-sphinx
RUN_DEPENDS +=		devel/gtest \
			lang/gcc/${MODGCC4_VERSION},-c++

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_ENABLE_TERMINFO:Bool=False \
			-DLLVM_REQUIRES_RTTI:Bool=True \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True \
			-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND

# Workaround relocation overflow
#
# Have the build disable PIE to workaround breakage that was
# introduced when PIE was enabled
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="-Wl,--relax -nopie"
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="-Wl,--relax -nopie"
.endif

TEST_TARGET =		check

# XXX sync
GCC_VER =		4.9.4
.if ${MACHINE_ARCH} == "amd64"
GCC_CONFIG =		x86_64-unknown-openbsd${OSREV}
.else
GCC_CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
.endif
CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V GCC_VER GCC_CONFIG

post-extract:
	mv ${WRKDIR}/cfe-${LLVM_V}.src ${WRKSRC}/tools/clang

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/lib/Driver/ToolChains.cpp \
	    ${WRKSRC}/tools/clang/lib/Driver/Tools.cpp
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs && make -f Makefile.sphinx man
	cd ${WRKSRC}/tools/clang/docs && make -f Makefile.sphinx man

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/_build/man/* \
	    ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/tools/clang/docs/_build/man/clang.1 \
	    ${PREFIX}/man/man1
	# lit and FileCheck are not installed
	@rm ${PREFIX}/man/man1/lit.1
	@rm ${PREFIX}/man/man1/FileCheck.1

.include <bsd.port.mk>
