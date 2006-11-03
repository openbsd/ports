# $OpenBSD: Makefile,v 1.4 2006/11/03 08:29:00 steven Exp $

COMMENT=	"library of Fortran 77 linear algebra subroutines"

VERSION=	3.0
DISTNAME=	LAPACK
PKGNAME=	${DISTNAME:L}-${VERSION}
SHARED_LIBS=	lapack 3.0
CATEGORIES=	math
DISTFILES=	${DISTNAME:L}.tgz manpages.tgz

HOMEPAGE=	http://www.netlib.org/lapack/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# freely available
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.netlib.org/lapack/ \
		ftp://netlib.bell-labs.com/netlib/lapack/ \
		http://www.netlib.no/netlib/lapack/

LIB_DEPENDS=	blas.>=1::math/blas

DIST_SUBDIR=	${DISTNAME:L}-${VERSION}
WRKDIST=	${WRKDIR}
WRKSRC=		${WRKDIR}/${DISTNAME}/SRC
MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBlapack_VERSION:R} \
		SHLIB_MINOR=${LIBlapack_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

REGRESS_FLAGS=	OPTS= LOADOPTS= \
		LAPACKLIB=liblapack.a \
		TMGLIB=libtmg.a \
		BLASLIB=${LOCALBASE}/lib/libblas.a

post-build:
	@rm -f ${WRKDIR}/man/manl/zbcon.l
	@perl -pi -e 's/(\.TH\s+\w+)\s+l(.*)"\)"/\1 3\2/' \
		${WRKDIR}/man/manl/*.l
	@cd ${WRKDIR}/man/manl && for m in *.l; do mv $$m $${m%\.l}.3; done

post-install:
	${INSTALL_MAN} ${WRKDIR}/man/manl/*.3 ${PREFIX}/man/man3

pre-regress:
	cd ${WRKDIR}/${DISTNAME} && ln -f ${WRKSRC}/liblapack.a

do-regress:
	cd ${WRKDIR}/${DISTNAME}/TESTING/MATGEN && ${MAKE} ${REGRESS_FLAGS}
	cd ${WRKDIR}/${DISTNAME}/TESTING && ${MAKE} ${REGRESS_FLAGS}

.include <bsd.port.mk>
