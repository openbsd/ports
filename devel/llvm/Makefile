# $OpenBSD: Makefile,v 1.85 2014/09/12 12:39:47 brad Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

ONLY_FOR_ARCHS = ${LLVM_ARCHS}
DPB_PROPERTIES = parallel

COMMENT =	modular, fast C/C++/ObjC compiler, static analyzer and tools

LLVM_V =	3.5
DISTNAME =	llvm-${LLVM_V}.20140228
REVISION =	13
CATEGORIES =	devel
MASTER_SITES =	http://comstyle.com/source/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS =	clang		1.0

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread stdc++ z

MODULES =	devel/cmake \
		lang/python

TEST_DEPENDS =	devel/dejagnu \
		shells/bash
BUILD_DEPENDS +=	textproc/py-sphinx
RUN_DEPENDS +=		devel/gtest

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_ENABLE_TERMINFO:Bool=False \
			-DLLVM_REQUIRES_RTTI:Bool=True \
			-DCMAKE_BUILD_TYPE:String=Release \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True

# Workaround relocation overflow
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS=-Wl,--relax
.endif

TEST_TARGET =		check

CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/scan-build/scan-build
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs && make -f Makefile.sphinx man
	pod2man --release=CVS --center="LLVM" \
	    ${WRKSRC}/tools/clang/docs/tools/clang.pod \
	    ${WRKSRC}/docs/_build/man/clang.1

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/clang/tools/scan-build/ccc-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/c++-analyzer \
	    ${WRKSRC}/tools/clang/tools/scan-build/scan-build ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/sorttable.js \
	    ${WRKSRC}/tools/clang/tools/scan-build/scanview.css \
	    ${PREFIX}/share/llvm
	${INSTALL_DATA} ${WRKSRC}/docs/_build/man/* \
	    ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/tools/clang/tools/scan-build/scan-build.1 \
	    ${PREFIX}/man/man1
	# lit is not installed anymore
	@rm ${PREFIX}/man/man1/lit.1

.include <bsd.port.mk>
