# $OpenBSD: Makefile,v 1.3 2005/12/24 14:46:37 steven Exp $

COMMENT=	"Basic Linear Algebra Subprograms"

DISTNAME=	blas
PKGNAME=	${DISTNAME}-${LIBblas_VERSION}
SHARED_LIBS=	blas	1.0
SHLIB_MAJOR=	${LIBblas_VERSION:R}
SHLIB_MINOR=	${LIBblas_VERSION:E}

CATEGORIES=	math

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
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PKGNAME}
WRKDIST=	${WRKDIR}

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${SHLIB_MAJOR} SHLIB_MINOR=${SHLIB_MINOR}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

.include <bsd.port.mk>
