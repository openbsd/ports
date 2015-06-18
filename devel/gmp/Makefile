# $OpenBSD: Makefile,v 1.28 2015/06/18 02:36:35 bentley Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-5.0.2
REVISION=	3
SHARED_LIBS +=  gmp                  9.0      # 10.2
SHARED_LIBS +=  gmpxx                1.0      # 6.2
CATEGORIES=	devel math

HOMEPAGE=	http://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>
EXTRACT_SUFX=	.tar.bz2

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++

MASTER_SITES=	ftp://ftp.gmplib.org/pub/${DISTNAME}/ \
		${MASTER_SITE_GNU:=gmp/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-cxx
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

post-patch:
	@cp ${FILESDIR}/mpn_m88k_add_n.asm ${WRKSRC}/mpn/m88k/add_n.asm
	@cp ${FILESDIR}/mpn_m88k_sub_n.asm ${WRKSRC}/mpn/m88k/sub_n.asm
	@rm ${WRKSRC}/mpn/m88k/add_n.s ${WRKSRC}/mpn/m88k/sub_n.s \
	    ${WRKSRC}/mpn/m88k/mul_1.s

.include <bsd.port.mk>
