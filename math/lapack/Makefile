# $OpenBSD: Makefile,v 1.24 2015/06/18 07:19:25 bentley Exp $

COMMENT=	library of Fortran 77 linear algebra subroutines

DISTNAME=	lapack-3.1.1
REVISION=	5

SHARED_LIBS=	lapack 5.0

CATEGORIES=	math

HOMEPAGE=	http://www.netlib.org/lapack/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.netlib.org/lapack/ \
		http://www.netlib.no/netlib/lapack/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS =	math/blas
WANTLIB =	blas>=1

MODULES=	fortran
MODFORTRAN_COMPILER = g77
BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}

MAKE_ENV=	SHLIB_MAJOR=${LIBlapack_VERSION:R} \
		SHLIB_MINOR=${LIBlapack_VERSION:E} \
		TIMER=EXT_ETIME \
		FC=${FC}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
USE_GROFF =	Yes
TEST_FLAGS=	PLAT= OPTS= FORTRAN=${FC} LOADER=${FC} \
		LAPACKLIB=SRC/liblapack.a \
		BLASLIB=${LOCALBASE}/lib/libblas.a

MAKE_FILE=	${FILESDIR}/Makefile
WRKSRC=		${WRKDIST}/SRC

# avoid 'unknown manpage type' errors and move manpages to section 3
pre-configure:
	cd ${WRKDIST}/manpages/man/manl && \
		perl -pi -e 's/(\.TH\s+\w+)\s+1(.*)/\1 3f\2/' *.l && \
	        for m in *.l ; do if ! egrep '^\.TH' $$m >/dev/null ; then \
                perl -pi -e "s/(.SH NAME)/.TH \U$${m%\.l} 3f\n\1/" $$m ; fi ; \
		mv $$m $${m%\.l}.3f ; done
	cp ${WRKDIST}/make.inc.example ${WRKDIST}/make.inc

post-install:
	${INSTALL_MAN} ${WRKDIST}/manpages/man/manl/*.3f ${PREFIX}/man/man3f/

do-test:
	cd ${WRKDIST}/TESTING/MATGEN && ${MAKE} ${ALL_TEST_FLAGS}
	cd ${WRKDIST}/TESTING && ${MAKE} ${ALL_TEST_FLAGS}

.include <bsd.port.mk>
