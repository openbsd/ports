# $OpenBSD: Makefile,v 1.2 2005/12/23 19:56:50 steven Exp $

COMMENT=	"C routines for computing the Discrete Fourier Transform"

V=		3.0.1
DISTNAME=	fftw-${V}
PKGNAME=	fftw3-${V}
SHARED_LIBS=	fftw3	3.1
MODGNU_SHARED_LIBS=	fftw3	''
CATEGORIES=	math

HOMEPAGE=	http://www.fftw.org/

MAINTAINER=	Steven Mestdagh <steven.mestdagh@esat.kuleuven.be>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	ftp://ftp.fftw.org/pub/fftw/ \
		http://fftw.mirror.fr/

SEPARATE_BUILD=	concurrent

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fftw3
	${INSTALL_DATA} ${WRKSRC}/doc/fftw3.pdf ${PREFIX}/share/doc/fftw3

.include <bsd.port.mk>
