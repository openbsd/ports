# $OpenBSD: Makefile,v 1.2 2001/03/30 02:29:17 kevlo Exp $

COMMENT=	'perl modules for creating and manipulating PDF'

DISTNAME=	Text-PDF-0.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.378

MAINTAINER=	Shell Hung <i@shellhung.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Text

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd
BUILD_DEPENDS=	${PERL_MODULES}/Compress/Zlib.pm::archivers/p5-Compress-Zlib
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Text-PDF
EXAMPLE_LOC=	${WRKSRC}/examples
SCRIPT_FILES=	graph.pl hello.pl pdfaddobj.pl pdfaddpg.pl \
		pdfcrop.pl pdfgetobj.pl
DATA_FILES=	CD.CFG test.pdf

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
.for i in ${SCRIPT_FILES}
	${INSTALL_SCRIPT} ${EXAMPLE_LOC}/$i ${EXAMPLE_DIR}/$i
.endfor
.for i in ${DATA_FILES}
	${INSTALL_DATA} ${EXAMPLE_LOC}/$i ${EXAMPLE_DIR}/$i
.endfor

.include <bsd.port.mk>
