# $OpenBSD: Makefile,v 1.2 2006/12/27 12:35:13 simon Exp $

COMMENT=	"write a cross-platform Excel binary file"

MODULES=	cpan
DISTNAME=	Spreadsheet-WriteExcel-2.17
CATEGORIES=	misc

MAINTAINER=	Alexey E. Suslikov <alexey.suslikov@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Parse-RecDescent-*:devel/p5-Parse-RecDescent

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Spreadsheet-WriteExcel

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.pl ${EXAMPLE_DIR}

.include <bsd.port.mk>
