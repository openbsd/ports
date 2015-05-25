# $OpenBSD: Makefile,v 1.24 2015/05/25 07:54:27 jasper Exp $

COMMENT=	Basic Linear Algebra Subprograms

VERSION=	1.0
DISTNAME=	blas
PKGNAME=	${DISTNAME}-${VERSION}
REVISION=	7
SHARED_LIBS=	blas	2.0

CATEGORIES=	math
DISTFILES=	blas.tgz manpages.tgz:0

HOMEPAGE=	http://www.netlib.org/blas/

# freely available
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/blas-20110419/ \
		ftp://ftp.netlib.org/blas/ \
		ftp://netlib.bell-labs.com/netlib/blas/ \
		http://www.netlib.no/netlib/blas/
MASTER_SITES0=	${MASTER_SITES:S/blas/lapack/}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${DISTNAME}-${VERSION}
WRKDIST=	${WRKDIR}/BLAS

MODULES=	fortran
MODFORTRAN_COMPILER = g77
BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBblas_VERSION:R} \
		SHLIB_MINOR=${LIBblas_VERSION:E} \
		FC=${FC}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
USE_GROFF =	Yes

MANSRC=		${WRKDIR}/manpages/blas/man/manl

post-build:
	rm ${MANSRC}/{lsame,xerbla}.l
	@perl -pi -e 's/(\.TH\s+\w+)\s+l(.*)/\1 3f\2/' ${MANSRC}/*.l
	@cd ${MANSRC} && for m in *.l; do mv $$m $${m%\.l}.3f; done

post-install:
	${INSTALL_MAN} ${MANSRC}/*.3f ${PREFIX}/man/man3f

.include <bsd.port.mk>
