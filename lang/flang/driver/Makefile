# $OpenBSD: Makefile,v 1.1.1.1 2017/12/31 18:06:38 bcallah Exp $

# If you are updating to a new version
# (e.g. 5.0->5.1 or 6.0), you need to sync
# patches with devel/llvm
COMMENT =	LLVM Fortran compiler driver
DISTNAME =	flang-driver-5.0.1.20171220

GH_PROJECT =	clang
GH_COMMIT =	64043d5cec9fb02d1b0fd80c9f2c4e9e4f09cf8f

WANTLIB += ${COMPILER_LIBCXX} c m z

# C++11
COMPILER =	base-clang ports-gcc ports-clang

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	devel/llvm \
		textproc/libxml

# We don't want yet another copy of clang and its utilities on the system.
# Doubly true since flang is statically linked to its clang libs.
# So let's ignore the CMake install routine and just install the flang binary.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/flang ${PREFIX}/bin

.include <bsd.port.mk>
