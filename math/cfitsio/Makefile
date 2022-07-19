COMMENT=	library for handling FITS data
CATEGORIES=	math graphics devel

HOMEPAGE=	https://heasarc.gsfc.nasa.gov/fitsio/fitsio.html

DISTNAME=	cfitsio3450

PKGNAME=	cfitsio-3.450
REVISION=	1

SHARED_LIBS +=  cfitsio                   1.0 # 0.0

MASTER_SITES=	https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/ \
		https://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/oldvers/

# Mostly BSD-style, with two chunks of GPL code
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl m nghttp2 ssl z

CONFIGURE_STYLE=gnu

#ALL_TARGET=	all fitscopy imcopy shared fpack funpack
ALL_TARGET=	utils shared
SHLIB_SUFFIX=	.so.${LIBcfitsio_VERSION}
MAKE_FLAGS=	SHLIB_SUFFIX=${SHLIB_SUFFIX}

MODULES+=	fortran
MODFORTRAN_COMPILER=	gfortran

LIB_DEPENDS+=	net/curl

DOCDIR=${PREFIX}/share/doc/cfitsio

WRKDIST=	${WRKDIR}/cfitsio

post-patch:
	sed -i 's|<malloc.h>|<stdlib.h>|' ${WRKSRC}/*.[chl] ${WRKSRC}/zlib/*.h

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/License.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/*.doc ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/cookbook.c ${DOCDIR}
	rm -f ${PREFIX}/bin/{cookbook,speed,testprog}

do-test:
	cd ${WRKBUILD} && ${MAKE} testprog
	cd ${WRKBUILD} && LD_LIBRARY_PATH="${WRKBUILD}:" ./testprog >testprog.lis
	diff ${WRKBUILD}/testprog.lis ${WRKBUILD}/testprog.out
	cmp ${WRKBUILD}/testprog.fit ${WRKBUILD}/testprog.std

.include <bsd.port.mk>
