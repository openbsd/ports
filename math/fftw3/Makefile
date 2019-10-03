# $OpenBSD: Makefile,v 1.37 2019/10/03 16:49:10 naddy Exp $

COMMENT-main=	C routines for computing the Discrete Fourier Transform
COMMENT-common=	common files for the fftw3 packages

V=		3.3.8
DISTNAME=	fftw-${V}
PKGNAME=	fftw3-${V}
FULLPKGNAME-main=	fftw3-${V}
# XXX set it to its default value so that bsd.port.mk won't whine
FULLPKGPATH-main=	math/fftw3,-main${FLAVOR_EXT:S/-/,/g}
FULLPKGNAME-common=	fftw3-common-${V}
SHARED_LIBS=	fftw3	7.1 \
		fftw3f	7.1 \
		fftw3_threads	1.1 \
		fftw3f_threads	1.1
CATEGORIES=	math

REVISION=	1

HOMEPAGE=	http://www.fftw.org/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://fftw.org/ \
		ftp://ftp.fftw.org/pub/fftw/ \
		ftp://ftp.fftw.org/pub/fftw/old/

SEPARATE_BUILD=	Yes

MULTI_PACKAGES=	-main -common

FLAVORS=	double float
FLAVOR?=	double

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-threads

.if ${FLAVOR} == "float"
CONFIGURE_ARGS+=--enable-float
FULLPKGNAME-main=	fftw3-float-${V}
.endif

FULLPKGPATH-common=	math/fftw3,-common
RUN_DEPENDS-main=	${FULLPKGPATH-common}
WANTLIB-main=		c m pthread
PKG_ARCH-common=	*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fftw3
	${INSTALL_DATA} ${WRKSRC}/doc/fftw3.pdf ${PREFIX}/share/doc/fftw3

.include <bsd.port.mk>
