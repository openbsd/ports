COMMENT-main=	C routines for computing the Discrete Fourier Transform
COMMENT-common=	common files for the fftw3 packages

V=		3.3.10
DISTNAME=	fftw-${V}
PKGNAME=	fftw3-${V}
FULLPKGNAME-main=	fftw3-${V}
# XXX set it to its default value so that bsd.port.mk won't whine
FULLPKGPATH-main=	math/fftw3,-main${FLAVOR_EXT:S/-/,/g}
FULLPKGNAME-common=	fftw3-common-${V}
SHARED_LIBS=	fftw3	7.1 \
		fftw3f	7.1 \
		fftw3_threads	1.2 \
		fftw3f_threads	1.2
CATEGORIES=	math

REVISION-main=		0
REVISION-common=	0

HOMEPAGE=	https://www.fftw.org/

# GPL
PERMIT_PACKAGE=	Yes

SITES=		https://fftw.org/ \
		ftp://ftp.fftw.org/pub/fftw/ \
		ftp://ftp.fftw.org/pub/fftw/old/

SEPARATE_BUILD=	Yes

MULTI_PACKAGES=	-main -common

FLAVORS=	double float
FLAVOR?=	double

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-threads

FFTW3_SUFX=

.if ${FLAVOR} == "float"
FFTW3_SUFX=		f
CONFIGURE_ARGS+=	--enable-float
FULLPKGNAME-main=	fftw3-float-${V}
.endif

FULLPKGPATH-common=	math/fftw3,-common
RUN_DEPENDS-main=	${FULLPKGPATH-common}
WANTLIB-main=		c m pthread
PKG_ARCH-common=	*

SUBST_VARS +=	FFTW3_SUFX

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fftw3
	${INSTALL_DATA} ${WRKSRC}/doc/fftw3.pdf ${PREFIX}/share/doc/fftw3
.if ${FLAVOR} == "float"
	mv ${WRKINST}/${LOCALBASE}/lib/cmake/fftw3/ ${PREFIX}/lib/cmake/fftw3${FFTW3_SUFX}
.endif
	# https://github.com/FFTW/fftw3/issues/130
	${INSTALL_DATA} ${FILESDIR}/FFTW3LibraryDepends.cmake.in \
		${PREFIX}/lib/cmake/fftw3${FFTW3_SUFX}/FFTW3LibraryDepends.cmake
	${SUBST_CMD} ${PREFIX}/lib/cmake/fftw3${FFTW3_SUFX}/FFTW3LibraryDepends.cmake

.include <bsd.port.mk>
