#	$OpenBSD: Makefile,v 1.8 2015/03/16 18:07:42 naddy Exp $

COMMENT=	complex numbers math library

V=		0.9
DISTNAME=	mpc-${V}
PKGNAME=	libmpc-${V}
REVISION=	1
SHARED_LIBS=	mpc	0.1	# 2.0

CATEGORIES=	devel math

HOMEPAGE=	http://www.multiprecision.org
MASTER_SITES=	${HOMEPAGE}/mpc/download/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/mpfr \
			devel/gmp
WANTLIB=		mpfr>=1.0 gmp>=9.0 m

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-mpfr=${LOCALBASE} \
			--with-gmp=${LOCALBASE}


.include <bsd.port.mk>
