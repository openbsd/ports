# $OpenBSD: Makefile,v 1.31 2019/07/17 21:33:33 bcallah Exp $

# Sync version with lang/flang/flang always!
COMMENT =	LLVM Fortran math library
DISTNAME =	flang-8.0.0.20190708
PKGNAME =	${DISTNAME:S/flang/libpgmath/}

SHARED_LIBS +=	pgmath                    4.2 # 7.0

GH_PROJECT =	flang
GH_COMMIT =	b342225a64692d2b9c3aff7658a8e4f94a8923eb

WANTLIB += ${COMPILER_LIBCXX} m

# REQUIRES a compiler that understands AVX-512F
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/llvm

# If you delete flang, this should go too.
RUN_DEPENDS =	lang/flang/driver

# arm64-specific routines don't build with clang
# (known upstream) so use the generic routines for now.
.if ${MACHINE_ARCH:Maarch64}
CONFIGURE_ARGS +=	-DLIBPGMATH_WITH_GENERIC=On
.endif

WRKDIST =	${WRKDIR}/flang-${GH_COMMIT}/runtime/libpgmath

.include <bsd.port.mk>
