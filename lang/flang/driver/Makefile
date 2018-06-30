# $OpenBSD: Makefile,v 1.7 2018/06/30 02:40:11 bcallah Exp $

# If you are updating to a new version
# (e.g. 6.0->6.1 or 7.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-6.0.0.20180629

GH_PROJECT =	flang-driver
GH_COMMIT =	4cd0029aeb7bcf945d99950b260fef4f760d0b4c

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
