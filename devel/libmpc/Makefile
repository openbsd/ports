#	$OpenBSD: Makefile,v 1.1.1.1 2010/04/02 20:33:21 jsg Exp $

COMMENT=	complex numbers math library

V=		0.8.1
DISTNAME=	mpc-${V}
PKGNAME=	libmpc-${V}
SHARED_LIBS +=	mpc	0.0

CATEGORIES=	devel math

HOMEPAGE=	http://www.multiprecision.org
MASTER_SITES=	${HOMEPAGE}/mpc/download/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		mpfr.>=0.2::devel/mpfr \
			gmp.>=8.0::devel/gmp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-mpfr=${LOCALBASE} \
			--with-gmp=${LOCALBASE}

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>
