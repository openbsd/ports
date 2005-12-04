# $OpenBSD: Makefile,v 1.2 2005/12/04 12:10:12 alek Exp $

COMMENT=	"Basic Linear Algebra Subprograms"

DISTNAME=	blas
PKGNAME=	blas-${SHLIB_VER}
CATEGORIES=	math

HOMEPAGE=	http://www.netlib.org/blas/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# freely available
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHLIB_MAJOR=	1
SHLIB_MINOR=	0

MASTER_SITES=	ftp://ftp.netlib.org/blas/ \
		ftp://netlib.bell-labs.com/netlib/blas/ \
		http://www.netlib.no/netlib/blas/
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PKGNAME}
WRKDIST=	${WRKDIR}

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${SHLIB_MAJOR} SHLIB_MINOR=${SHLIB_MINOR}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

# need shared library version for machines which support shared libraries.
SHLIB_VER=	${SHLIB_MAJOR}.${SHLIB_MINOR}
SUBST_VARS=	SHLIB_VER

.include <bsd.port.mk>
