# You must create a bootstrap for each supported arch.
# Can use GDC to create said bootstrap compiler.
ONLY_FOR_ARCHS =	amd64

V =		1.28.0
COMMENT =	LLVM D Compiler
DISTFILES =	ldc-${V}-src.tar.gz:0 \
		ldc-${V}-bootstrap.tar.gz:1
PKGNAME =	ldc-${V}
REVISION =	0
CATEGORIES =	lang

HOMEPAGE =	https://wiki.dlang.org/LDC
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LDC: BSD
# Runtime libraries: Boost Software License 1.0
# Misc: Apache 2.0 with LLVM exceptions
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

MASTER_SITES0 =	https://github.com/ldc-developers/ldc/releases/download/v${V}/
MASTER_SITES1 =	https://github.com/ibara/ldc/releases/download/bootstrap-${V}/

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/llvm

RUN_DEPENDS =	devel/llvm

# COMPILE_D_MODULES_SEPARATELY=ON lets ldc compile with sane memory limits.
CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCOMPILE_D_MODULES_SEPARATELY=ON \
			-DLDC_DYNAMIC_COMPILE=OFF \
			-DLDC_WITH_LLD=OFF \
			-DLLVM_CONFIG="${LOCALBASE}/bin/llvm-config"

# Use a bootstrap compiler, similar to DMD.
CONFIGURE_ENV =	DMD="${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}/ldmd2" \
		LD_LIBRARY_PATH="${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}"

MAKE_ENV +=	LD_LIBRARY_PATH="${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}"

WRKDIST	=	${WRKDIR}/ldc-${V}-src

# I put a vanilla ldc2.conf in the bootstrap tarball.
# This fixes it up for the specifics for each arch.
post-patch:
	sed -i 's#/usr/local/include/d#${WRKDIR}/ldc-${V}-bootstrap/d#g' \
		${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}/ldc2.conf
	sed -i 's#"/usr/local/lib",#"/usr/local/lib","${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}",#g' \
		${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}/ldc2.conf

# Same trick as with flang:
#   Replace the shared LLVM.so library with the static libraries.
#   Fixes runtime warnings about symbol size mismatches.
#   Revisit on occasion (maybe these warning go away someday?)
post-configure:
	sed -i \
	's,-lLLVM-11,`${LOCALBASE}/bin/llvm-config --libs all --link-static --ignore-libllvm` -lz,g' \
	${WRKBUILD}/build.ninja

# Move the default ldc2.conf to its proper packaging location.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ldc
	mv ${PREFIX}/etc/ldc2.conf ${PREFIX}/share/examples/ldc
	rm -rf ${PREFIX}/etc

.include <bsd.port.mk>
