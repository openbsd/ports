# $OpenBSD: Makefile,v 1.26 2019/04/26 02:04:01 bcallah Exp $

# Sync version with lang/flang/flang always!
COMMENT =	LLVM Fortran math library
DISTNAME =	flang-7.0.1.20190424
PKGNAME =	${DISTNAME:S/flang/libpgmath/}

SHARED_LIBS +=	pgmath                    4.2 # 7.0

GH_PROJECT =	flang
GH_COMMIT =	c8317c462dff68938f8aadd0b19734cf82a65b8d

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
