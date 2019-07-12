# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:39 sthen Exp $

COMMENT=	Basic Linear Algebra Subprograms

VERSION=	3.8.0
DISTNAME=	blas-${VERSION}
REVISION=	0

SHARED_LIBS=	blas	2.1

CATEGORIES=	math
DISTFILES=	${DISTNAME}.tgz manpages.tgz:0

HOMEPAGE=	http://www.netlib.org/blas/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# freely available
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://www.netlib.org/blas/
MASTER_SITES0=	${MASTER_SITES:S/blas/lapack/}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${DISTNAME}
WRKDIST=	${WRKDIR}/${DISTNAME:U}

MODULES=	fortran
MODFORTRAN_COMPILER = gfortran
BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}
WANTLIB=	m

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBblas_VERSION:R} \
		SHLIB_MINOR=${LIBblas_VERSION:E} \
		FC="${MODFORTRAN_COMPILER} -cpp" \
		CC=${MODFORTRAN_COMPILER}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
USE_GROFF=	Yes

MANSRC=		${WRKDIR}/man/man3

post-build:
	@cd ${MANSRC} && for m in *.f.3 ; do perl -pi \
		-e 'if ($$. == 1) {s/(\.TH\s+)"([^"]+)\.f"\s+3\s+("[^"]+")/\1 \2 3f \3 "BLAS Version ${VERSION}" "BLAS Version ${VERSION}"/}' \
		-e 'if ($$. == 5) {s/^(\w+)\.f \\-/\1/}' $$m ; done
	@cd ${MANSRC} && \
		for m in BLAS_SRC*.f.3; do mv $$m $${m#BLAS_SRC_}; done && \
		for m in *.f.3; do mv $$m $${m%\.f\.3}.3f; done

post-install:
	@cd ${MANSRC} && for m in `${MAKE} -f ${MAKE_FILE} printsrc` ; do \
		${INSTALL_MAN} $${m%.f}.3f ${PREFIX}/man/man3f ; done

.include <bsd.port.mk>
