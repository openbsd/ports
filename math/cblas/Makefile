# $OpenBSD: Makefile,v 1.21 2020/03/13 13:36:42 jca Exp $

COMMENT=	C interface to the BLAS library

VERSION=	1.0
DISTNAME=	cblas
PKGNAME=	${DISTNAME}-${VERSION}
REVISION=	7
SHARED_LIBS=	cblas	1.1

CATEGORIES=	math

HOMEPAGE=	http://www.netlib.org/blas/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# freely available
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.netlib.org/blas/blast-forum/ \
		http://www.netlib.no/netlib/blas/blast-forum/
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${DISTNAME}-${VERSION}
WRKDIST=	${WRKDIR}/CBLAS
WRKSRC=		${WRKDIST}/src

MODULES=		fortran
MODFORTRAN_COMPILER =	gfortran

BUILD_DEPENDS =	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS =	math/blas
WANTLIB =	blas>=2.1

CFLAGS+=	-DADD_ -I${WRKDIST}/include
PICFLAG=	-fPIC
MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBcblas_VERSION:R} \
		SHLIB_MINOR=${LIBcblas_VERSION:E} \
		FC="${MODFORTRAN_COMPILER} -cpp"
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib \
		DEBUGLIBS=no

TEST_FLAGS=	LOADER=${MODFORTRAN_COMPILER} \
		CFLAGS="${CFLAGS}" \
		INC="-I${WRKSRC}" \
		LIB="-L${WRKSRC} -lcblas -L${LOCALBASE}/lib -lblas -lgfortran"

post-install:
	${INSTALL_DATA} ${WRKDIST}/include/*.h ${PREFIX}/include

do-test:
	@cd ${WRKDIST}/testing && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} all1 ${ALL_TEST_FLAGS} && \
	export LD_LIBRARY_PATH="${WRKSRC}" && \
		./xscblat1 && \
		./xdcblat1 && \
		./xccblat1 && \
		./xzcblat1

.include <bsd.port.mk>
