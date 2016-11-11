# $OpenBSD: Makefile,v 1.30 2016/11/11 19:40:26 naddy Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-6.1.1
SHARED_LIBS +=  gmp                  10.0     # 13.1
SHARED_LIBS +=  gmpxx                2.0      # 9.1
CATEGORIES=	devel math

HOMEPAGE=	https://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>
EXTRACT_SUFX=	.tar.xz

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m stdc++

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
