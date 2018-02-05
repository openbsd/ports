# $OpenBSD: Makefile,v 1.2 2018/02/05 04:08:24 bcallah Exp $

# If you are updating to a new version
# (e.g. 5.0->5.1 or 6.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-5.0.1.20180201

GH_PROJECT =	flang-driver
GH_COMMIT =	ca2742d3bb7272afab3632dc4792ce7c4ac52958

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc ports-clang

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
