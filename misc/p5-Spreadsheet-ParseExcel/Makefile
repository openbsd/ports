# $OpenBSD: Makefile,v 1.1.1.1 2006/07/15 19:55:56 steven Exp $

COMMENT=	"get information from Excel spreadsheets"

DISTNAME=       Spreadsheet-ParseExcel-0.2603
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Spreadsheet/}

RUN_DEPENDS=	:p5-OLE-Storage_Lite-*:devel/p5-OLE-Storage_Lite
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

EXAMPLE_DIR=	${PREFIX}/share/examples/p5-Spreadsheet-ParseExcel

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/sample/*.pl ${EXAMPLE_DIR}

.include <bsd.port.mk>
