# $OpenBSD: Makefile,v 1.10 2006/12/01 14:24:55 steven Exp $

COMMENT-main=	"C routines for computing the Discrete Fourier Transform"
COMMENT-common=	"common files for the fftw3 packages"

V=		3.1.2
DISTNAME=	fftw-${V}
PKGNAME=	fftw3-${V}
FULLPKGNAME-main=	fftw3-${V}p2
FULLPKGNAME-common=	fftw3-common-${V}p0
SHARED_LIBS=	fftw3	4.2 \
		fftw3f	4.2
CATEGORIES=	math

HOMEPAGE=	http://www.fftw.org/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fftw.org/pub/fftw/ \
		http://fftw.mirror.fr/ \
		ftp://ftp.fftw.org/pub/fftw/old/

SEPARATE_BUILD=	concurrent

MULTI_PACKAGES=	-main -common

FLAVORS=	double float
FLAVOR?=	double

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-portable-binary

.if ${FLAVOR} == "float"
CONFIGURE_ARGS+=--enable-float
FULLPKGNAME-main=	fftw3-float-${V}p0
.endif

FULLPKGPATH-common=	math/fftw3,-common
RUN_DEPENDS-main=	::${FULLPKGPATH-common}
WANTLIB-main=		c m
PKG_ARCH-common=	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fftw3
	${INSTALL_DATA} ${WRKSRC}/doc/fftw3.pdf ${PREFIX}/share/doc/fftw3

.include <bsd.port.mk>
