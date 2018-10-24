# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:06 sthen Exp $

# If you are updating to a new version
# (e.g. 6.0->6.1 or 7.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-6.0.0.20181012
REVISION =	0

GH_PROJECT =	flang-driver
GH_COMMIT =	f90d905b99ef497cc654b4a8433f1ac35a870f11

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/llvm \
		textproc/libxml

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/lib/Driver/ToolChains/OpenBSD.cpp

# We don't want yet another copy of clang and its utilities on the system.
# Doubly true since flang is statically linked to its clang libs.
# So let's ignore the CMake install routine and just install the flang binary.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/flang ${PREFIX}/bin

.include <bsd.port.mk>
