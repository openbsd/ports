# You must create a bootstrap for each supported arch.
# Can use GDC to create said bootstrap compiler.
ONLY_FOR_ARCHS =	amd64

V =		1.33.0
COMMENT =	LLVM D Compiler
DISTFILES =	ldc-${V}-src.tar.gz
DISTFILES.boot= ldc-${V}-bootstrap.tar.gz
PKGNAME =	ldc-${V}
CATEGORIES =	lang
REVISION =	0

HOMEPAGE =	https://wiki.dlang.org/LDC
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LDC: BSD
# Runtime libraries: Boost Software License 1.0
# Misc: Apache 2.0 with LLVM exceptions
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo m z

SITES =		https://github.com/ldc-developers/ldc/releases/download/v${V}/
SITES.boot =	https://github.com/ibara/ldc/releases/download/bootstrap-${V}/

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	lang/clang devel/cmake

MODCLANG_COMPILER_LINKS =	No
MODCLANG_RUNDEP =		No

# COMPILE_D_MODULES_SEPARATELY=ON lets ldc compile with sane memory limits.
CONFIGURE_ARGS =	-DCOMPILE_D_MODULES_SEPARATELY=ON \
			-DLDC_DYNAMIC_COMPILE=OFF \
			-DLDC_WITH_LLD=OFF \
			-DLLVM_CONFIG="${LOCALBASE}/bin/llvm-config-${MODCLANG_VERSION}"

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
	chmod 644 ${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}/lib*.so* # XXX
	cp /usr/lib/libc.so.97.* ${WRKDIR}/ldc-${V}-bootstrap/${MACHINE_ARCH}/ # XXX

# Same trick as with flang:
#   Replace the shared LLVM.so library with the static libraries.
#   Fixes runtime warnings about symbol size mismatches.
#   Revisit on occasion (maybe these warning go away someday?)
#   We're using LLVM 13 now, but LLVM 15 is coming.
post-configure:
	sed -i \
	's,-lLLVM-13,`${LOCALBASE}/bin/llvm-config-${MODCLANG_VERSION} --libs all --link-static --ignore-libllvm` -lz,g' \
	${WRKBUILD}/build.ninja
	sed -i \
	's,-lLLVM-15,`${LOCALBASE}/bin/llvm-config-${MODCLANG_VERSION} --libs all --link-static --ignore-libllvm` -lz,g' \
	${WRKBUILD}/build.ninja

# Move the default ldc2.conf to its proper packaging location.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ldc
	mv ${PREFIX}/etc/ldc2.conf ${PREFIX}/share/examples/ldc
	rm -rf ${PREFIX}/etc

.include <bsd.port.mk>
