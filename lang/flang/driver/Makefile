# $OpenBSD: Makefile,v 1.21 2019/08/05 18:31:02 bcallah Exp $

# If you are updating to a new version
# (e.g. 8.0->8.1 or 9.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-8.0.0.20190621
REVISION =	0

GH_PROJECT =	flang-driver
GH_COMMIT =	3ed998ef28a8608cad9c045229eb37b39a402294

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
