# $OpenBSD: Makefile,v 1.15 2018/08/31 21:50:08 bcallah Exp $

# Sync version with lang/flang/flang always!
COMMENT =	LLVM Fortran math library
DISTNAME =	flang-6.0.0.20180830
PKGNAME =	${DISTNAME:S/flang/libpgmath/}

SHARED_LIBS +=	pgmath                    2.0 # 6.0

GH_PROJECT =	flang
GH_COMMIT =	c04c6ca4c803a8daaffaf254a277c8cc4d7407a5

WANTLIB += ${COMPILER_LIBCXX} m

# REQUIRES a compiler that understands AVX-512F
COMPILER =	base-clang ports-clang

MODULES =	devel/cmake \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/llvm

# If you delete flang, this should go too.
RUN_DEPENDS =	lang/flang/driver

WRKDIST =	${WRKDIR}/flang-${GH_COMMIT}/runtime/libpgmath

.include <bsd.port.mk>
