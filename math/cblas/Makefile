# $OpenBSD: Makefile,v 1.1.1.1 2006/10/02 21:58:25 steven Exp $

COMMENT=	"C interface to the BLAS library"

DISTNAME=	cblas
PKGNAME=	${DISTNAME}-${LIBcblas_VERSION}
SHARED_LIBS=	cblas	1.0

CATEGORIES=	math

HOMEPAGE=	http://www.netlib.org/blas/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# freely available
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.netlib.org/blas/blast-forum/ \
		ftp://netlib.bell-labs.com/netlib/blas/blast-forum/ \
		http://www.netlib.no/netlib/blas/blast-forum/
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PKGNAME}
WRKDIST=	${WRKDIR}/CBLAS
WRKSRC=		${WRKDIST}/src

LIB_DEPENDS=	blas.>=1.0::math/blas

CFLAGS+=	-DADD_
MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBcblas_VERSION:R} \
		SHLIB_MINOR=${LIBcblas_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

REGRESS_FLAGS=	LOADER=${FC} CFLAGS="${CFLAGS}" INC="-I${WRKSRC}" \
		LIB="-L${WRKSRC} -lcblas -L${LOCALBASE}/lib -lblas"

post-install:
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include

do-regress:
	@cd ${WRKDIST}/testing && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} all1 ${REGRESS_FLAGS} && \
	export LD_LIBRARY_PATH="${WRKSRC}" && \
		./xscblat1 && \
		./xdcblat1 && \
		./xccblat1 && \
		./xzcblat1

.include <bsd.port.mk>
