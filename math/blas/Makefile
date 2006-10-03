# $OpenBSD: Makefile,v 1.5 2006/10/03 06:00:03 ckuethe Exp $

COMMENT=	"Basic Linear Algebra Subprograms"

DISTNAME=	blas
PKGNAME=	${DISTNAME}-${LIBblas_VERSION}p0
SHARED_LIBS=	blas	1.0

CATEGORIES=	math
DISTFILES=	blas.tgz manpages.tgz:0

HOMEPAGE=	http://www.netlib.org/blas/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# freely available
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.netlib.org/blas/ \
		ftp://netlib.bell-labs.com/netlib/blas/ \
		http://www.netlib.no/netlib/blas/
MASTER_SITES0=	${MASTER_SITES:S/blas/lapack/}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PKGNAME}
WRKDIST=	${WRKDIR}

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBblas_VERSION:R} \
		SHLIB_MINOR=${LIBblas_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

MANSRC=		${WRKDIR}/${DISTNAME}/man/manl

post-build:
	@rm -f ${MANSRC}/{lsame,xerbla}.l
	@perl -pi -e 's/(\.TH\s+\w+)\s+l(.*)/\1 3\2/' ${MANSRC}/*.l
	@cd ${MANSRC} && for m in *.l; do mv $$m $${m%\.l}.3; done

post-install:
	${INSTALL_MAN} ${MANSRC}/*.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
