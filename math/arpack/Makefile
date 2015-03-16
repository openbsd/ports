# $OpenBSD: Makefile,v 1.15 2015/03/16 18:07:49 naddy Exp $

COMMENT=	solve large scale eigenvalue problems

DISTNAME=	arpack96
PKGNAME=	arpack-96
REVISION=	4
SHARED_LIBS=	arpack 1.0
CATEGORIES=	math

HOMEPAGE=	http://www.caam.rice.edu/software/ARPACK/

# BSD license (not in distfile)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}SRC/
DISTFILES=	${DISTNAME}.tar.gz patch.tar.gz ug.ps.gz
DIST_SUBDIR=	arpack

MODULES=		fortran
MODFORTRAN_COMPILER =	g77
BUILD_DEPENDS=		${MODFORTRAN_BUILD_DEPENDS}

LIB_DEPENDS =	math/lapack \
		math/blas
WANTLIB =	lapack>=1 blas>=1

WRKDIST=	${WRKDIR}/ARPACK
WRKSRC=		${WRKDIST}/SRC
MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBarpack_VERSION:R} \
		SHLIB_MINOR=${LIBarpack_VERSION:E} \
		FC=${FC}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

post-extract:
	@cd ${WRKDIST}/UTIL && mv *.f ${WRKSRC}

post-install:
.for i in BAND COMPLEX NONSYM SIMPLE SVD SYM
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arpack/$i
	${INSTALL_DATA} ${WRKDIST}/EXAMPLES/$i/* \
		${PREFIX}/share/examples/arpack/$i
.endfor
	${INSTALL_DATA} ${WRKDIST}/EXAMPLES/README \
		${PREFIX}/share/examples/arpack
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${WRKDIST}/DOCUMENTS/* ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${WRKDIR}/ug.ps ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${FILESDIR}/LICENSE ${PREFIX}/share/doc/arpack

.include <bsd.port.mk>
