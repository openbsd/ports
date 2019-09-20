# $OpenBSD: Makefile,v 1.35 2019/09/20 14:51:52 bcallah Exp $

# Sync version with lang/flang/flang always!
COMMENT =	LLVM Fortran math library
DISTNAME =	flang-8.0.0.20190917
PKGNAME =	${DISTNAME:S/flang/libpgmath/}

SHARED_LIBS +=	pgmath                    4.3 # 8.0

GH_PROJECT =	flang
GH_COMMIT =	e5f8d337d5bf86cb19314b61e1b49bab895d4757

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
