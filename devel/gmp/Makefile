COMMENT-main=	library for arbitrary precision arithmetic
COMMENT-cxx=	C++ library for arbitrary precision arithmetic

VERSION=	6.3.0
DISTNAME=	gmp-${VERSION}
MULTI_PACKAGES=	-main -cxx
PKGNAME-cxx=	gmpxx-${VERSION}

SHARED_LIBS +=  gmp                  11.1     # 15.0
SHARED_LIBS +=  gmpxx                3.0      # 11.0
CATEGORIES=	devel math

HOMEPAGE=	https://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>
EXTRACT_SUFX=	.tar.xz

# LGPLv3+
PERMIT_PACKAGE=	Yes

SITES=		https://gmplib.org/download/gmp/ \
		${SITE_GNU:=gmp/}

WANTLIB-main=	# empty
WANTLIB-cxx=	gmp m ${COMPILER_LIBCXX}

LIB_DEPENDS-cxx=${FULLPKGNAME-main}:${BASE_PKGPATH},-main \
		${MODGCC4_CPPLIBDEP}

PSEUDO_FLAVORS=	no_cxx bootstrap
FLAVOR?=

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=gnu
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

# Our vsnprintf works properly; skip test that uses %n.
CONFIGURE_ENV+=	gmp_cv_func_vsnprintf=yes

.if ${MACHINE_ARCH:Maarch64}
CONFIGURE_ENV+= ASMFLAGS=-mmark-bti-property
.endif

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-cxx}
COMPILER=	base-clang ports-gcc base-gcc
CONFIGURE_ARGS+=--enable-cxx
.endif

.include <bsd.port.mk>
