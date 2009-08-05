# $OpenBSD: Makefile,v 1.3 2009/08/05 20:40:46 steven Exp $

COMMENT=	solve large scale eigenvalue problems

DISTNAME=	arpack96
PKGNAME=	arpack-96p0
SHARED_LIBS=	arpack 1.0
CATEGORIES=	math

HOMEPAGE=	http://www.caam.rice.edu/software/ARPACK/

# Rice BSD license (not in distfile)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}SRC/
DISTFILES=	${DISTNAME}.tar.gz ug.ps.gz

LIB_DEPENDS=	lapack.>=1::math/lapack \
		blas.>=1::math/blas

WRKDIST=	${WRKDIR}/ARPACK
WRKSRC=		${WRKDIST}/SRC
MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBarpack_VERSION:R} \
		SHLIB_MINOR=${LIBarpack_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no

post-extract:
	@cd ${WRKDIST}/UTIL && mv *.f ${WRKSRC}

post-install:
.for i in BAND COMPLEX NONSYM SIMPLE SVD SYM
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arpack/$i
	${INSTALL_DATA} ${WRKDIST}/EXAMPLES/$i/* \
		${PREFIX}/share/examples/arpack/$i
.endfor
	${INSTALL_DATA} ${WRKDIST}/EXAMPLES/README \
		${PREFIX}/share/examples/arpack
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${WRKDIST}/DOCUMENTS/* ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${WRKDIR}/ug.ps ${PREFIX}/share/doc/arpack
	${INSTALL_DATA} ${FILESDIR}/LICENSE ${PREFIX}/share/doc/arpack

.include <bsd.port.mk>
