# $OpenBSD: Makefile,v 1.4 2018/04/07 14:58:18 ajacoutot Exp $

BROKEN =	needs work for LLVM 6.0

# If you are updating to a new version
# (e.g. 5.0->5.1 or 6.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-5.0.1.20180308

GH_PROJECT =	flang-driver
GH_COMMIT =	095de1354dd583b0cd4c7a91d5c328710a1a9c32

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
