# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 10:51:01 steven Exp $

COMMENT=	"library for reading and writing Matlab MAT files"

DISTNAME=	matio-1.3.1
SHARED_LIBS=	matio	0.0
CATEGORIES=	math

HOMEPAGE=	http://sourceforge.net/projects/matio/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=matio/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-fortran=no \
		--enable-test=yes

TESTS=	copy write writecompressed writestruct writecell readslab \
	writeslab writesparse writenan writeinf readslab4 ind2sub sub2ind

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
