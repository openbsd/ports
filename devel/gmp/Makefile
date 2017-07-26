# $OpenBSD: Makefile,v 1.35 2017/07/26 22:45:17 sthen Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-6.1.2
REVISION =	1
SHARED_LIBS +=  gmp                  10.0     # 13.2
SHARED_LIBS +=  gmpxx                2.0      # 9.2
CATEGORIES=	devel math

HOMEPAGE=	https://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>
EXTRACT_SUFX=	.tar.xz

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m ${COMPILER_LIBCXX}

MASTER_SITES=	https://gmplib.org/download/gmp/ \
		${MASTER_SITE_GNU:=gmp/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-cxx
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

post-patch:
	@cp ${FILESDIR}/mpn_m88k_add_n.asm ${WRKSRC}/mpn/m88k/add_n.asm
	@cp ${FILESDIR}/mpn_m88k_sub_n.asm ${WRKSRC}/mpn/m88k/sub_n.asm
	@rm ${WRKSRC}/mpn/m88k/add_n.s ${WRKSRC}/mpn/m88k/sub_n.s \
	    ${WRKSRC}/mpn/m88k/mul_1.s

.include <bsd.port.mk>
