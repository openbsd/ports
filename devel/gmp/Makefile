# $OpenBSD: Makefile,v 1.40 2019/07/12 20:44:10 sthen Exp $

COMMENT-main=	library for arbitrary precision arithmetic
COMMENT-cxx=	C++ library for arbitrary precision arithmetic

VERSION=	6.1.2
DISTNAME=	gmp-${VERSION}
MULTI_PACKAGES=	-main -cxx
PKGNAME-main=	gmp-${VERSION}
PKGNAME-cxx=	gmpxx-${VERSION}
REVISION=	3
REVISION-cxx=	4

SHARED_LIBS +=  gmp                  10.0     # 13.2
SHARED_LIBS +=  gmpxx                2.0      # 9.2
CATEGORIES=	devel math

HOMEPAGE=	https://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>
EXTRACT_SUFX=	.tar.xz

# LGPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://gmplib.org/download/gmp/ \
		${MASTER_SITE_GNU:=gmp/}

WANTLIB-main=	# empty
WANTLIB-cxx=	gmp m ${COMPILER_LIBCXX}

LIB_DEPENDS-cxx=${BASE_PKGPATH},-main \
		${MODGCC4_CPPLIBDEP}

PSEUDO_FLAVORS=	no_cxx bootstrap
FLAVOR?=

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-cxx}
COMPILER=	base-clang ports-gcc base-gcc
CONFIGURE_ARGS+=--enable-cxx
.endif

post-patch:
	@cp ${FILESDIR}/mpn_m88k_add_n.asm ${WRKSRC}/mpn/m88k/add_n.asm
	@cp ${FILESDIR}/mpn_m88k_sub_n.asm ${WRKSRC}/mpn/m88k/sub_n.asm
	@rm ${WRKSRC}/mpn/m88k/add_n.s ${WRKSRC}/mpn/m88k/sub_n.s \
	    ${WRKSRC}/mpn/m88k/mul_1.s

.include <bsd.port.mk>
