# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:39 sthen Exp $

COMMENT=	solve large scale eigenvalue problems

DISTNAME=	arpack96
PKGNAME=	arpack-96
REVISION=	8
SHARED_LIBS=	arpack 1.0
CATEGORIES=	math

HOMEPAGE=	http://www.caam.rice.edu/software/ARPACK/

# BSD license (not in distfile)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}SRC/
DISTFILES=	${DISTNAME}.tar.gz patch.tar.gz ug.ps.gz
DIST_SUBDIR=	arpack

MODULES=		fortran
MODFORTRAN_COMPILER =	gfortran
BUILD_DEPENDS=		${MODFORTRAN_BUILD_DEPENDS}

LIB_DEPENDS =	math/lapack \
		math/blas
WANTLIB =	lapack>=1 blas>=1 m

WRKDIST=	${WRKDIR}/ARPACK
WRKSRC=		${WRKDIST}/SRC
PICFLAG=	-fPIC
MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBarpack_VERSION:R} \
		SHLIB_MINOR=${LIBarpack_VERSION:E} \
		FC="${MODFORTRAN_COMPILER} -cpp" \
		CC=${MODFORTRAN_COMPILER} \
		NOPROFILE=1
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

NO_TEST=	Yes

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
