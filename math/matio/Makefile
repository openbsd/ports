# $OpenBSD: Makefile,v 1.13 2015/05/25 07:54:27 jasper Exp $

COMMENT=	library for reading and writing Matlab MAT files

DISTNAME=	matio-1.3.2
REVISION=	1
SHARED_LIBS=	matio	1.0
CATEGORIES=	math

HOMEPAGE=	http://sourceforge.net/projects/matio/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matio/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	fortran
MODFORTRAN_COMPILER = g77
WANTLIB=	${MODFORTRAN_WANTLIB} m
BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=	${MODFORTRAN_LIB_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV += FC=${MODFORTRAN_COMPILER}
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-fortran=no \
		--enable-test=yes

TESTS=	copy write writecompressed writecell readslab \
	writeslab writesparse writenan writeinf readslab4 ind2sub sub2ind \
	write_compressed_cell write_compressed_sparse

do-test:
.for t in ${TESTS}
	@echo "Testing ${t}"
	@cd ${WRKBUILD}/test && ./test_mat ${t}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/matio
	${INSTALL_DATA} ${WRKSRC}/libmatio.pdf ${PREFIX}/share/doc/matio
	rm -r ${PREFIX}/share/matio
	rm -r ${PREFIX}/bin/test_*

.include <bsd.port.mk>
