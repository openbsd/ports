# $OpenBSD: Makefile,v 1.5 2001/05/16 08:58:18 shell Exp $

COMMENT=	"perl modules for creating and manipulating PDF"

DISTNAME=	Text-PDF-0.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.378

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Text

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
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
