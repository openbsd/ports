# $OpenBSD: Makefile,v 1.6 2018/07/03 04:04:11 bcallah Exp $

# Sync version with lang/flang/flang always!
COMMENT =	LLVM Fortran math library
DISTNAME =	flang-6.0.0.20180701
PKGNAME =	${DISTNAME:S/flang/libpgmath/}

SHARED_LIBS +=	pgmath                    1.0 # 6.0

GH_PROJECT =	flang
GH_COMMIT =	e7de2f6070e1ceb3eeb8563af0d8334bcce4ac93

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
