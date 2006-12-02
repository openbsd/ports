# $OpenBSD: Makefile,v 1.3 2006/12/02 00:19:11 steven Exp $

COMMENT=	"library for reading and writing Matlab MAT files"

DISTNAME=	matio-1.3.2
SHARED_LIBS=	matio	1.0
CATEGORIES=	math

HOMEPAGE=	http://sourceforge.net/projects/matio/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matio/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	g2c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-fortran=no \
		--enable-test=yes

TESTS=	copy write writecompressed writecell readslab \
	writeslab writesparse writenan writeinf readslab4 ind2sub sub2ind \
	write_compressed_cell write_compressed_sparse

do-regress:
.for t in ${TESTS}
	@echo "Testing ${t}"
	@cd ${WRKBUILD}/test && ./test_mat ${t}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/matio
	${INSTALL_DATA} ${WRKSRC}/libmatio.pdf ${PREFIX}/share/doc/matio
	@rm -rf ${PREFIX}/share/matio
	@rm -rf ${PREFIX}/bin/test_*

.include <bsd.port.mk>
