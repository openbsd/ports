#	$OpenBSD: Makefile,v 1.5 2011/07/06 09:35:13 jasper Exp $

COMMENT=	complex numbers math library

V=		0.9
DISTNAME=	mpc-${V}
PKGNAME=	libmpc-${V}
REVISION=	0
SHARED_LIBS=	mpc	0.1	# 2.0

CATEGORIES=	devel math

HOMEPAGE=	http://www.multiprecision.org
MASTER_SITES=	${HOMEPAGE}/mpc/download/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		devel/mpfr \
			devel/gmp
WANTLIB=		mpfr>=1.0 gmp>=9.0 m

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-mpfr=${LOCALBASE} \
			--with-gmp=${LOCALBASE}

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
