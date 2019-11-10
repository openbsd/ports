# $OpenBSD: Makefile,v 1.23 2019/11/10 16:50:31 bcallah Exp $

# If you are updating to a new version
# (e.g. 8.0->8.1 or 9.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-8.0.1.20190819

GH_PROJECT =	flang-driver
GH_COMMIT =	ea411daaafc7ec5b85be1cd7857c0ceab42e54aa

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/llvm \
		textproc/libxml

CONFIGURE_ARGS =	-DLIBCLANG_BUILD_STATIC=On \
			-DLLVM_CONFIG="${LOCALBASE}/bin/llvm-config"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/lib/Driver/ToolChains/OpenBSD.cpp

# Don't use the LLVM shared library.
post-configure:
	sed -i \
	's,-lLLVM-8,`${LOCALBASE}/bin/llvm-config --libs all --link-static --ignore-libllvm` -lz,g' \
	${WRKBUILD}/build.ninja

# We don't want yet another copy of clang and its utilities on the system.
# Doubly true since flang is statically linked to its clang libs.
# So let's ignore the CMake install routine and just install the flang binary.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/flang ${PREFIX}/bin

.include <bsd.port.mk>
