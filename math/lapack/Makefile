# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:42 sthen Exp $

COMMENT=	library of Fortran linear algebra subroutines

VERSION=	3.8.0
DISTNAME=	lapack-${VERSION}
REVISION=	1

SHARED_LIBS=	lapack 7.1

CATEGORIES=	math
DISTFILES=	${DISTNAME}.tar.gz manpages.tgz:0

HOMEPAGE=	http://www.netlib.org/lapack/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://www.netlib.org/lapack/ \
		https://www.netlib.no/netlib/lapack/
MASTER_SITES0=	https://www.netlib.org/lapack/
DIST_SUBDIR=	${DISTNAME}

LIB_DEPENDS =	math/blas
WANTLIB =	blas>=1 m

MODULES=	fortran
MODFORTRAN_COMPILER = gfortran
BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}

MAKE_ENV=	SHLIB_MAJOR=${LIBlapack_VERSION:R} \
		SHLIB_MINOR=${LIBlapack_VERSION:E} \
		TIMER=EXT_ETIME \
		FC="${MODFORTRAN_COMPILER} -cpp" \
		CC=${MODFORTRAN_COMPILER}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
USE_GROFF =	Yes

TEST_DEPENDS=	devel/gmake
TEST_FLAGS=	PLAT= OPTS= FORTRAN=${MODFORTRAN_COMPILER} \
		LOADER=${MODFORTRAN_COMPILER} \
		LAPACKLIB=SRC/liblapack.a \
		BLASLIB="${LOCALBASE}/lib/libblas.a ${LOCALBASE}/lib/libgfortran.a"

MAKE_FILE=	${FILESDIR}/Makefile
WRKSRC=		${WRKDIST}/SRC

MANSRC=		${WRKDIR}/man/man3

# avoid 'unknown manpage type' errors and move manpages to section 3
pre-configure:
	@cp ${WRKDIST}/make.inc.example ${WRKDIST}/make.inc
	@cd ${WRKSRC} && for f in *.F ; do mv $$f $${f%.F}.f ; done

post-build:
	@cd ${MANSRC} && for m in *.f.3 ; do perl -pi \
		-e 'if ($$. == 1) {s/(\.TH\s+)"([^"]+)\.f"\s+3\s+("[^"]+")/\1 \2 3f \3 "LAPACK Version ${VERSION}" "LAPACK Version ${VERSION}"/}' \
		-e 'if ($$. == 5) {s/^(\w+)\.f \\-/\1/}' $$m ; done
	@cd ${MANSRC} && \
		for m in SRC_*.f.3; do mv $$m $${m#SRC_}; done && \
		for m in *.f.3; do mv $$m $${m%\.f\.3}.3f; done

post-install:
	@cd ${MANSRC} && for m in `${MAKE} -f ${MAKE_FILE} printsrc | \
		perl -p -e 's/\s/\n/g' | \
		grep -v TIME | \
		grep -v ssytrd_sb2st.f | \
		grep -v dsytrd_sb2st.f | \
		grep -v chetrd_hb2st.f | \
		grep -v zhetrd_hb2st.f | \
		grep -v dlamch.f | \
		grep -v iparam2stage.f | \
		grep -v ilaver.f | \
		grep -v slamch.f | \
		grep -v lsame.f | \
	 	grep -v xerbla.f | \
		grep -v xerbla_array.f` ; do \
		${INSTALL_MAN} `basename $${m%.f}.3f` ${PREFIX}/man/man3f ; done

do-test:
	cd ${WRKDIST}/TESTING/MATGEN && gmake ${ALL_TEST_FLAGS}
	cd ${WRKDIST}/TESTING && gmake ${ALL_TEST_FLAGS}

.include <bsd.port.mk>
