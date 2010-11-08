#	$OpenBSD: Makefile,v 1.2 2010/11/08 09:57:40 espie Exp $

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

LIB_DEPENDS=		::devel/mpfr \
			::devel/gmp
WANTLIB =		mpfr.>=0.2 gmp.>=8.0

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-mpfr=${LOCALBASE} \
			--with-gmp=${LOCALBASE}

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>
