# $OpenBSD: Makefile,v 1.15 2019/02/16 20:39:46 bcallah Exp $

# If you are updating to a new version
# (e.g. 7.0->7.1 or 8.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-7.0.1.20190215

GH_PROJECT =	flang-driver
GH_COMMIT =	088552bd7df60cfd0a3e1823fc7db58ec4af4527

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/llvm \
		textproc/libxml

CONFIGURE_ARGS =	-DLIBCLANG_BUILD_STATIC=On

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/lib/Driver/ToolChains/OpenBSD.cpp

# Don't use the LLVM shared library.
post-configure:
	sed -i \
	's,-lLLVM-7,`llvm-config --libs all --link-static --ignore-libllvm` -lz,g' \
	${WRKBUILD}/build.ninja

# We don't want yet another copy of clang and its utilities on the system.
# Doubly true since flang is statically linked to its clang libs.
# So let's ignore the CMake install routine and just install the flang binary.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/flang ${PREFIX}/bin

.include <bsd.port.mk>
